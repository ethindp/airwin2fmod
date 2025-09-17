cmake_minimum_required(VERSION 3.14)

project(
  ZOutputStage
  DESCRIPTION "ZOutputStage is the output clipping from the Emu e6400 style Z filters."
  HOMEPAGE_URL "https://www.airwindows.com"
  LANGUAGES C CXX)
add_airwindows_plugin(${PROJECT_NAME} plugin.cpp miniaudio.h bit_vector.hpp)
