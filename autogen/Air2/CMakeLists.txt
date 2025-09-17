cmake_minimum_required(VERSION 3.14)

project(
  Air2
  DESCRIPTION "Air2 is a different bright EQ with silk tone and high sample rate support."
  HOMEPAGE_URL "https://www.airwindows.com"
  LANGUAGES C CXX)
add_airwindows_plugin(${PROJECT_NAME} plugin.cpp miniaudio.h bit_vector.hpp)
