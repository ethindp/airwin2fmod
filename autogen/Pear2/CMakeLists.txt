cmake_minimum_required(VERSION 3.14)

project(
  Pear2
  DESCRIPTION "Pear2 is my Pear filter plus nonlinearity."
  HOMEPAGE_URL "https://www.airwindows.com"
  LANGUAGES C CXX)
add_airwindows_plugin(${PROJECT_NAME} plugin.cpp miniaudio.h bit_vector.hpp)
