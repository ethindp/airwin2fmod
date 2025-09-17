cmake_minimum_required(VERSION 3.14)

project(
  ZRegion2
  DESCRIPTION "ZRegion2 is an Emu e6400 style Airwindows Region filter, with control smoothing."
  HOMEPAGE_URL "https://www.airwindows.com"
  LANGUAGES C CXX)
add_airwindows_plugin(${PROJECT_NAME} plugin.cpp miniaudio.h bit_vector.hpp)
