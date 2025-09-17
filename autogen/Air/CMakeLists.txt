cmake_minimum_required(VERSION 3.14)

project(
  Air
  DESCRIPTION "Air is a different bright EQ from any other. Requires 44.1K."
  HOMEPAGE_URL "https://www.airwindows.com"
  LANGUAGES C CXX)
add_airwindows_plugin(${PROJECT_NAME} plugin.cpp miniaudio.h bit_vector.hpp)
