cmake_minimum_required(VERSION 3.14)

project(
  GuitarConditioner
  DESCRIPTION "GuitarConditioner is like a Tube Screamer voicing without the squishiness and indistinctness."
  HOMEPAGE_URL "https://www.airwindows.com"
  LANGUAGES C CXX)
add_airwindows_plugin(${PROJECT_NAME} plugin.cpp miniaudio.h bit_vector.hpp)
