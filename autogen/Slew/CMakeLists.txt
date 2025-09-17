cmake_minimum_required(VERSION 3.14)

project(
  Slew
  DESCRIPTION "Slew is a slew clipper, which darkens treble in an unusual way."
  HOMEPAGE_URL "https://www.airwindows.com"
  LANGUAGES C CXX)
add_airwindows_plugin(${PROJECT_NAME} plugin.cpp miniaudio.h bit_vector.hpp)
