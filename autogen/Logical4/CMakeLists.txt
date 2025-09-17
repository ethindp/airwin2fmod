cmake_minimum_required(VERSION 3.14)

project(
  Logical4
  DESCRIPTION "Logical4 is a classic 2-buss compressor."
  HOMEPAGE_URL "https://www.airwindows.com"
  LANGUAGES C CXX)
add_airwindows_plugin(${PROJECT_NAME} plugin.cpp miniaudio.h bit_vector.hpp)
