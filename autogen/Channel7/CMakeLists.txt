cmake_minimum_required(VERSION 3.14)

project(
  Channel7
  DESCRIPTION "Channel7 improves slew clipping and lets you blend Channel 6 and 5."
  HOMEPAGE_URL "https://www.airwindows.com"
  LANGUAGES C CXX)
add_airwindows_plugin(${PROJECT_NAME} plugin.cpp miniaudio.h bit_vector.hpp)
