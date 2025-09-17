cmake_minimum_required(VERSION 3.14)

project(
  TapeDust
  DESCRIPTION "TapeDust is just a special treble-erode noise, a ‘slew noise’ plugin."
  HOMEPAGE_URL "https://www.airwindows.com"
  LANGUAGES C CXX)
add_airwindows_plugin(${PROJECT_NAME} plugin.cpp miniaudio.h bit_vector.hpp)
