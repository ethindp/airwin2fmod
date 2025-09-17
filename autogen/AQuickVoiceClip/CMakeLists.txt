cmake_minimum_required(VERSION 3.14)

project(
  AQuickVoiceClip
  DESCRIPTION "AQuickVoiceClip softens headset mic recordings that have been super hard clipped on capture."
  HOMEPAGE_URL "https://www.airwindows.com"
  LANGUAGES C CXX)
add_airwindows_plugin(${PROJECT_NAME} plugin.cpp miniaudio.h bit_vector.hpp)
