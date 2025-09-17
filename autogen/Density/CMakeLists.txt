cmake_minimum_required(VERSION 3.14)

project(
  Density
  DESCRIPTION "Density is a Swiss Army Knife of saturation/antisaturation."
  HOMEPAGE_URL "https://www.airwindows.com"
  LANGUAGES C CXX)
add_airwindows_plugin(${PROJECT_NAME} plugin.cpp miniaudio.h bit_vector.hpp)
