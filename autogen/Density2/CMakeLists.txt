cmake_minimum_required(VERSION 3.14)

project(
  Density2
  DESCRIPTION "Density2 is a different color for Density, some old code I had that people wanted."
  HOMEPAGE_URL "https://www.airwindows.com"
  LANGUAGES C CXX)
add_airwindows_plugin(${PROJECT_NAME} plugin.cpp miniaudio.h bit_vector.hpp)
