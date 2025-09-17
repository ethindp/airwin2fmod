cmake_minimum_required(VERSION 3.14)

project(
  UnBox
  DESCRIPTION "UnBox is a distortion where only the harmonics that don't alias are allowed to distort."
  HOMEPAGE_URL "https://www.airwindows.com"
  LANGUAGES C CXX)
add_airwindows_plugin(${PROJECT_NAME} plugin.cpp miniaudio.h bit_vector.hpp)
