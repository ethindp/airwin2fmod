cmake_minimum_required(VERSION 3.14)

project(
  ClearCoat
  DESCRIPTION "ClearCoat is an array of bright ambience reverbs."
  HOMEPAGE_URL "https://www.airwindows.com"
  LANGUAGES C CXX)
add_airwindows_plugin(${PROJECT_NAME} plugin.cpp miniaudio.h bit_vector.hpp)
