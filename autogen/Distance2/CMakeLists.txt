cmake_minimum_required(VERSION 3.14)

project(
  Distance2
  DESCRIPTION "Distance2 is a versatile space shaper for creating depth."
  HOMEPAGE_URL "https://www.airwindows.com"
  LANGUAGES C CXX)
add_airwindows_plugin(${PROJECT_NAME} plugin.cpp miniaudio.h bit_vector.hpp)
