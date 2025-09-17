cmake_minimum_required(VERSION 3.14)

project(
  MidSide
  DESCRIPTION "MidSide is the other side of the EdIsDim mid/side conversion utility plugin."
  HOMEPAGE_URL "https://www.airwindows.com"
  LANGUAGES C CXX)
add_airwindows_plugin(${PROJECT_NAME} plugin.cpp miniaudio.h bit_vector.hpp)
