cmake_minimum_required(VERSION 3.14)

project(
  kCathedral4
  DESCRIPTION "kCathedral4 is the Cathedral sound expressed as distant space."
  HOMEPAGE_URL "https://www.airwindows.com"
  LANGUAGES C CXX)
add_airwindows_plugin(${PROJECT_NAME} plugin.cpp miniaudio.h bit_vector.hpp)
