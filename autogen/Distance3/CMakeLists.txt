cmake_minimum_required(VERSION 3.14)

project(
  Distance3
  DESCRIPTION "Distance3 combines the best parts of Distance and Discontinuity."
  HOMEPAGE_URL "https://www.airwindows.com"
  LANGUAGES C CXX)
add_airwindows_plugin(${PROJECT_NAME} plugin.cpp miniaudio.h bit_vector.hpp)
