#include "inja.hpp"
#include <AirwinRegistry.h>
#include <choc/text/choc_Files.h>
#include <filesystem>
#include <fmt/core.h>
#include <vector>

using namespace inja;

int main() {
  if (!std::filesystem::is_directory("template")) {
    fmt::println("Error: template directory not found. Please create it and "
                 "copy all necessary files and re-run this program");
    return 1;
  }
  if (!std::filesystem::is_regular_file("template/plugin.cpp.inja")) {
    fmt::println("Error: plugin.cpp template not found. Please create it and "
                 "re-run this program.");
    return 1;
  }
  if (!std::filesystem::is_regular_file("template/CMakeLists.txt.inja")) {
    fmt::println("Error: CMakeLists.txt template not found. Please create it "
                 "and re-run this program.");
    return 1;
  }
  if (!std::filesystem::is_regular_file("template/miniaudio.h")) {
    fmt::println("Error: miniaudio.h implementation not found. Please copy it "
                 "into the templates directory first");
    return 1;
  }
  if (!std::filesystem::is_directory("template/cmake")) {
    fmt::println("Error: could not find cmake modules directory for template");
    return 1;
  }
  if (!std::filesystem::is_regular_file("template/bit_vector.hpp")) {
    fmt::println("Error: could not find bit vector implementation");
    return 1;
  }
  if (!std::filesystem::is_regular_file(
          "template/CMakeLists.toplevel.txt.inja")) {
    fmt::println("Error: could not find top-level CMaekLists.txt template");
    return 1;
  }
  const auto plugin_template =
      choc::file::loadFileAsString("template/plugin.cpp.inja");
  const auto cmakelists_template =
      choc::file::loadFileAsString("template/CMakeLists.txt.inja");
  const auto miniaudio_impl =
      choc::file::loadFileAsString("template/miniaudio.h");
  const auto bit_vector_source =
      choc::file::loadFileAsString("template/bit_vector.hpp");
  const auto toplevel_cmake_source =
      choc::file::loadFileAsString("template/CMakeLists.toplevel.txt.inja");
  if (!std::filesystem::is_directory("autogen")) {
    try {
      if (!std::filesystem::create_directory("autogen")) {
        fmt::println("Error: could no create autogen directory");
        return 1;
      }
    } catch (std::exception &ex) {
      fmt::println("Error: {}", ex.what());
      return 1;
    }
  }
  for (const auto &entry : AirwinRegistry::registry) {
    if (!std::filesystem::is_directory(std::filesystem::path("autogen") /
                                       entry.name)) {
      try {
        if (!std::filesystem::create_directory(
                std::filesystem::path("autogen") / entry.name)) {
          fmt::println("Error: could not create autogen/{} directory",
                       entry.name);
          return 1;
        }
      } catch (std::exception &ex) {
        fmt::println("Error: {}", ex.what());
        return 1;
      }
    }
    try {
      json data;
      data["plugin_name"] = entry.name;
      data["plugin_first_commit"] = entry.firstCommitDate;
      data["plugin_category"] = entry.category;
      data["plugin_what_text"] = entry.whatText;
      const auto plugin_source = render(plugin_template, data);
      const auto cmake_source = render(cmakelists_template, data);
      choc::file::replaceFileWithContent(
          fmt::format("autogen/{}/CMakeLists.txt", entry.name), cmake_source);
      choc::file::replaceFileWithContent(
          fmt::format("autogen/{}/miniaudio.h", entry.name), miniaudio_impl);
      choc::file::replaceFileWithContent(
          fmt::format("autogen/{}/bit_vector.hpp", entry.name),
          bit_vector_source);
      choc::file::replaceFileWithContent(
          fmt::format("autogen/{}/plugin.cpp", entry.name), plugin_source);
    } catch (std::exception &ex) {
      fmt::println("Error: could not generate code for plugin {}: {}",
                   entry.name, ex.what());
      return 1;
    }
  }
  try {
    json data;
    data["plugins"] = json::array();
    for (const auto &entry : AirwinRegistry::registry) {
      json data2;
      data2["name"] = entry.name;
      data2["category"] = entry.category;
      data2["cat_chris_ordering"] = entry.catChrisOrdering;
      data2["is_mono"] = entry.isMono;
      data2["what_text"] = entry.whatText;
      data2["param_count"] = entry.nParams;
      data2["first_commit_date"] = entry.firstCommitDate;
      data2["ordering"] = entry.ordering;
      data2["collections"] = entry.collections;
      data["plugins"].push_back(data2);
    }
    const auto toplevel_cmake = render(toplevel_cmake_source, data);
    choc::file::replaceFileWithContent("autogen/CMakeLists.txt",
                                       toplevel_cmake);
    return 0;
  } catch (std::exception &ex) {
    fmt::println("Error: {}", ex.what());
    return 1;
  }
  return 0;
}
