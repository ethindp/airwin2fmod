cmake_minimum_required(VERSION 3.14)

project(
  Pafnuty2
  DESCRIPTION "Pafnuty2 is a Chebyshev filter, that adds harmonics, and fits in the VCV Rack port."
  HOMEPAGE_URL "https://www.airwindows.com"
  LANGUAGES C CXX)
add_airwindows_plugin(${PROJECT_NAME} plugin.cpp miniaudio.h bit_vector.hpp)
