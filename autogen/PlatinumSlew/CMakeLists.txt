cmake_minimum_required(VERSION 3.14)

project(
  PlatinumSlew
  DESCRIPTION "PlatinumSlew is the best easy-to-use slew clipper."
  HOMEPAGE_URL "https://www.airwindows.com"
  LANGUAGES C CXX)
add_airwindows_plugin(${PROJECT_NAME} plugin.cpp miniaudio.h bit_vector.hpp)
