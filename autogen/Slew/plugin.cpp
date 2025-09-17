#include "bit_vector.hpp"
#include <AirwinRegistry.h>
#include <algorithm>
#include <cassert>
#include <cstddef>
#include <cstring>
#include <fmod.h>
#include <memory>
#include <type_traits>
#define MA_ENABLE_ONLY_SPECIFIC_BACKENDS
#define MA_NO_DECODING
#define MA_NO_ENCODING
#define MA_NO_DEVICE_IO
#define MA_NO_RESOURCE_MANAGER
#define MA_NO_NODE_GRAPH
#define MA_NO_THREADING
#define MA_NO_GENERATION
#define MINIAUDIO_IMPLEMENTATION
#include "miniaudio.h"
#include <array>

static FMOD_DSP_PARAMETER_DESC **g_param_ptrs = nullptr;
static FMOD_DSP_PARAMETER_DESC *g_param_store = nullptr;
static int g_param_count = 0;
static FMOD_DSP_DESCRIPTION g_desc{};

inline auto map_interleaved_to_planar(const std::size_t i,
                                      const std::size_t frames,
                                      const std::size_t channels)
    -> std::size_t {
  const std::size_t ch = i % channels;
  const std::size_t f = i / channels;
  return ch * frames + f;
}

inline auto map_planar_to_interleaved(const std::size_t i,
                                      const std::size_t frames,
                                      const std::size_t channels)
    -> std::size_t {
  const std::size_t ch = i / frames;
  const std::size_t f = i % frames;
  return f * channels + ch;
}

template <class T, class MapFn>
static auto permute_in_place_dest(T *data, const std::size_t N, const MapFn p)
    -> void {
  if (N <= 1)
    return;
  gtl::bit_vector visited;
  visited.resize(N, false);
  for (std::size_t start = 0; start < N; ++start) {
    if (visited.test(start))
      continue;
    const std::size_t dest = p(start);
    if (dest == start) {
      visited.set(start);
      continue;
    }
    T tmp = data[start];
    std::size_t cur = start;
    while (true) {
      const std::size_t nxt = p(cur);
      std::swap(tmp, data[nxt]);
      visited.set(cur);
      cur = nxt;
      if (cur == start)
        break;
    }
  }
}

inline auto deinterleave_in_place(float *data, const std::size_t frames,
                                  const std::size_t channels) -> void {
  assert(data);
  const std::size_t N = frames * channels;
  if (channels <= 1 || frames == 0)
    return;
  permute_in_place_dest(data, N, [=](const std::size_t i) {
    return map_interleaved_to_planar(i, frames, channels);
  });
}

inline auto interleave_in_place(float *data, const std::size_t frames,
                                const std::size_t channels) -> void {
  assert(data);
  const std::size_t N = frames * channels;
  if (channels <= 1 || frames == 0)
    return;
  permute_in_place_dest(data, N, [=](std::size_t i) {
    return map_planar_to_interleaved(i, frames, channels);
  });
}

struct PluginState {
  AirwinConsolidatedBase *aw = nullptr;
  int desired_channels = 1;
  ma_channel_converter conv{};
  bool conv_init = false;
  int last_in_channels = -1;
  int paramcount = -1;
};

extern "C" {
FMOD_RESULT F_CALL plugin_create(FMOD_DSP_STATE *st) {
  void *mem = FMOD_DSP_ALLOC(st, sizeof(PluginState));
  if (!mem)
    return FMOD_ERR_MEMORY;
  auto *ps = new (mem) PluginState{};
  st->plugindata = ps;
  auto &reg =
      AirwinRegistry::registry[AirwinRegistry::nameToIndex["Slew"]];
  ps->aw = reg.generator().release();
  ps->desired_channels = reg.isMono ? 1 : 2;
  ps->paramcount = reg.nParams;
  int sr = 0;
  FMOD_DSP_GETSAMPLERATE(st, &sr);
  ps->aw->setSampleRate(float(sr));
  return FMOD_OK;
}

FMOD_RESULT F_CALL plugin_release(FMOD_DSP_STATE *st) {
  auto *ps = static_cast<PluginState *>(st->plugindata);
  if (!ps)
    return FMOD_OK;
  if (ps->conv_init) {
    ma_channel_converter_uninit(&ps->conv, nullptr);
    ps->conv_init = false;
  }
  delete ps->aw;
  ps->aw = nullptr;
  ps->~PluginState();
  FMOD_DSP_FREE(st, ps);
  st->plugindata = nullptr;
  return FMOD_OK;
}

FMOD_RESULT F_CALL plugin_reset(FMOD_DSP_STATE *st) {
  auto *ps = static_cast<PluginState *>(st->plugindata);
  if (!ps)
    return FMOD_OK;
  if (ps->conv_init) {
    ma_channel_converter_uninit(&ps->conv, nullptr);
    ps->conv_init = false;
    ps->last_in_channels = -1;
  }
  delete ps->aw;
  auto &reg =
      AirwinRegistry::registry[AirwinRegistry::nameToIndex["Slew"]];
  ps->aw = reg.generator().release();
  ps->desired_channels = reg.isMono ? 1 : 2;
  ps->paramcount = reg.nParams;
  int sr = 0;
  FMOD_DSP_GETSAMPLERATE(st, &sr);
  ps->aw->setSampleRate(float(sr));
  return FMOD_OK;
}

FMOD_RESULT F_CALL plugin_process(FMOD_DSP_STATE *st, unsigned int length,
                                  const FMOD_DSP_BUFFER_ARRAY *inarray,
                                  FMOD_DSP_BUFFER_ARRAY *outarray,
                                  FMOD_BOOL inputsidle,
                                  FMOD_DSP_PROCESS_OPERATION op) {
  auto *ps = static_cast<PluginState *>(st->plugindata);
  if (op == FMOD_DSP_PROCESS_QUERY) {
    outarray->numbuffers = inarray->numbuffers;
    outarray->speakermode = (ps->desired_channels == 1)
                                ? FMOD_SPEAKERMODE_MONO
                                : FMOD_SPEAKERMODE_STEREO;
    for (int b = 0; b < outarray->numbuffers; ++b) {
      outarray->buffernumchannels[b] = ps->desired_channels;
      if (outarray->bufferchannelmask)
        outarray->bufferchannelmask[b] = 0;
    }
    const int in_channels0 = inarray->buffernumchannels[0];
    if (!ps->conv_init || in_channels0 != ps->last_in_channels) {
      if (ps->conv_init) {
        ma_channel_converter_uninit(&ps->conv, nullptr);
        ps->conv_init = false;
      }
      const auto cfg = ma_channel_converter_config_init(
          ma_format_f32, in_channels0, nullptr, ps->desired_channels, nullptr,
          ma_channel_mix_mode_default);
      if (ma_channel_converter_init(&cfg, nullptr, &ps->conv) != MA_SUCCESS) {
        return FMOD_ERR_MEMORY;
      }
      ps->conv_init = true;
      ps->last_in_channels = in_channels0;
    }
    return FMOD_OK;
  }
  if (inputsidle) {
    return FMOD_ERR_DSP_SILENCE;
  }
  for (int b = 0; b < outarray->numbuffers; ++b) {
    const int in_channels = inarray->buffernumchannels[b];
    const int out_channels = ps->desired_channels;
    const std::size_t frames = length;
    const float *in = inarray->buffers[b];
    float *out = outarray->buffers[b];
    if (in_channels == out_channels) {
      std::copy_n(in, frames * out_channels, out);
    } else {
      ma_channel_converter_process_pcm_frames(&ps->conv, out, in, frames);
    }
    deinterleave_in_place(out, frames, out_channels);
    float *ch0 = out;
    float *ch1 = (out_channels == 2) ? (out + frames) : nullptr;
    float *chans[2] = {ch0, ch1 ? ch1 : ch0};
    ps->aw->processReplacing(chans, chans, frames);
    interleave_in_place(out, frames, out_channels);
  }
  return FMOD_OK;
}

FMOD_RESULT F_CALL plugin_set_parameter_float(FMOD_DSP_STATE *st, int index,
                                              float value) {
  auto *ps = static_cast<PluginState *>(st->plugindata);
  if (index < 0 || index >= ps->paramcount)
    return FMOD_ERR_INVALID_PARAM;
  ps->aw->setParameter(index, value);
  return FMOD_OK;
}

FMOD_RESULT F_CALL plugin_get_parameter_float(FMOD_DSP_STATE *st, int index,
                                              float *value, char *valuestr) {
  auto *ps = static_cast<PluginState *>(st->plugindata);
  if (index < 0 || index >= ps->paramcount)
    return FMOD_ERR_INVALID_PARAM;
  *value = ps->aw->getParameter(index);
  if (valuestr && ps->aw->canConvertParameterTextToValue(index)) {
    ps->aw->getParameterDisplay(index, valuestr);
  }
  return FMOD_OK;
}

FMOD_RESULT F_CALL plugin_sys_register(FMOD_DSP_STATE *state) {
  const auto &reg =
      AirwinRegistry::registry[AirwinRegistry::nameToIndex["Slew"]];
  const auto plugin = reg.generator();
  g_param_count = reg.nParams;
  g_param_store = static_cast<FMOD_DSP_PARAMETER_DESC *>(
      FMOD_DSP_ALLOC(state, sizeof(FMOD_DSP_PARAMETER_DESC) * g_param_count));
  if (!g_param_store)
    return FMOD_ERR_MEMORY;
  g_param_ptrs = static_cast<FMOD_DSP_PARAMETER_DESC **>(
      FMOD_DSP_ALLOC(state, sizeof(FMOD_DSP_PARAMETER_DESC *) * g_param_count));
  if (!g_param_ptrs)
    return FMOD_ERR_MEMORY;
  for (int i = 0; i < g_param_count; ++i) {
    g_param_ptrs[i] = &g_param_store[i];
    std::array<char, kVstMaxParamStrLen> paramname, paramlabel;
    const auto paramval = plugin->getParameter(i);
    plugin->getParameterLabel(i, paramlabel.data());
    plugin->getParameterName(i, paramname.data());
    FMOD_DSP_INIT_PARAMDESC_FLOAT(g_param_store[i], paramname.data(),
                                  paramlabel.data(), nullptr, 0.0, 1.0,
                                  paramval);
  }
  g_desc.numparameters = g_param_count;
  g_desc.paramdesc = g_param_ptrs;
  return FMOD_OK;
}

FMOD_RESULT F_CALL plugin_sys_deregister(FMOD_DSP_STATE *state) {
  if (g_param_ptrs) {
    FMOD_DSP_FREE(state, g_param_ptrs);
    g_param_ptrs = nullptr;
  }
  if (g_param_store) {
    FMOD_DSP_FREE(state, g_param_store);
    g_param_store = nullptr;
  }
  g_param_count = 0;
  return FMOD_OK;
}

F_EXPORT FMOD_DSP_DESCRIPTION *F_CALL FMODGetDSPDescription() {
  g_desc.pluginsdkversion = FMOD_PLUGIN_SDK_VERSION;
  std::memset(g_desc.name, 0, sizeof(g_desc.name));
  std::strncpy(g_desc.name, "Slew", sizeof(g_desc.name) - 1);
  g_desc.version = 0x00010000;
  g_desc.numinputbuffers = 1;
  g_desc.numoutputbuffers = 1;
  g_desc.create = plugin_create;
  g_desc.release = plugin_release;
  g_desc.reset = plugin_reset;
  g_desc.process = plugin_process;
  g_desc.setparameterfloat = plugin_set_parameter_float;
  g_desc.getparameterfloat = plugin_get_parameter_float;
  g_desc.sys_register = plugin_sys_register;
  g_desc.sys_deregister = plugin_sys_deregister;
  return &g_desc;
}
}