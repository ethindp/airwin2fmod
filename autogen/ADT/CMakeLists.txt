cmake_minimum_required(VERSION 3.14)

project(
  ADT
  DESCRIPTION "ADT is a double short delay tap with saturation."
  HOMEPAGE_URL "https://www.airwindows.com"
  LANGUAGES C CXX)
add_airwindows_plugin(${PROJECT_NAME} plugin.cpp miniaudio.h bit_vector.hpp)
