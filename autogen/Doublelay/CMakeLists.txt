cmake_minimum_required(VERSION 3.14)

project(
  Doublelay
  DESCRIPTION "Doublelay is StereoDoubler with independent delays and feedback."
  HOMEPAGE_URL "https://www.airwindows.com"
  LANGUAGES C CXX)
add_airwindows_plugin(${PROJECT_NAME} plugin.cpp miniaudio.h bit_vector.hpp)
