cmake_minimum_required(VERSION 3.14)

project(
  HypersonX
  DESCRIPTION "HypersonX is like UltrasonX but with seven stages instead of five."
  HOMEPAGE_URL "https://www.airwindows.com"
  LANGUAGES C CXX)
add_airwindows_plugin(${PROJECT_NAME} plugin.cpp miniaudio.h bit_vector.hpp)
