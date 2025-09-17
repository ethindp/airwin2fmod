cmake_minimum_required(VERSION 3.14)

project(
  DitherFloat
  DESCRIPTION "DitherFloat is a demo of floating point truncation: can also dither to 32 bit float output."
  HOMEPAGE_URL "https://www.airwindows.com"
  LANGUAGES C CXX)
add_airwindows_plugin(${PROJECT_NAME} plugin.cpp miniaudio.h bit_vector.hpp)
