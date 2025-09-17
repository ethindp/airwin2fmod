cmake_minimum_required(VERSION 3.14)

project(
  kCathedral5
  DESCRIPTION "kCathedral5 lets you place yourself anywhere you like in the space."
  HOMEPAGE_URL "https://www.airwindows.com"
  LANGUAGES C CXX)
add_airwindows_plugin(${PROJECT_NAME} plugin.cpp miniaudio.h bit_vector.hpp)
