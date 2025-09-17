cmake_minimum_required(VERSION 3.14)

project(
  Console7Channel
  DESCRIPTION "Console7Channel adds anti-alias filtering and special saturation curves."
  HOMEPAGE_URL "https://www.airwindows.com"
  LANGUAGES C CXX)
add_airwindows_plugin(${PROJECT_NAME} plugin.cpp miniaudio.h bit_vector.hpp)
