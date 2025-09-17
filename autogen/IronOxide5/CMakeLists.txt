cmake_minimum_required(VERSION 3.14)

project(
  IronOxide5
  DESCRIPTION "IronOxide5 is the old school, heavily colored Airwindows tape emulation."
  HOMEPAGE_URL "https://www.airwindows.com"
  LANGUAGES C CXX)
add_airwindows_plugin(${PROJECT_NAME} plugin.cpp miniaudio.h bit_vector.hpp)
