cmake_minimum_required(VERSION 3.14)

project(
  FinalClip
  DESCRIPTION "FinalClip is one stage of ADClip8 set up to clip +6dB for Final Cut Pro."
  HOMEPAGE_URL "https://www.airwindows.com"
  LANGUAGES C CXX)
add_airwindows_plugin(${PROJECT_NAME} plugin.cpp miniaudio.h bit_vector.hpp)
