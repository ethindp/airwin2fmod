cmake_minimum_required(VERSION 3.14)

project(
  EQ
  DESCRIPTION "EQ is just the EQ parts of CStrip."
  HOMEPAGE_URL "https://www.airwindows.com"
  LANGUAGES C CXX)
add_airwindows_plugin(${PROJECT_NAME} plugin.cpp miniaudio.h bit_vector.hpp)
