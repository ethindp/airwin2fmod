cmake_minimum_required(VERSION 3.14)

project(
  Dirt
  DESCRIPTION "Dirt is a soft-clip distortion in the spirit of Edge."
  HOMEPAGE_URL "https://www.airwindows.com"
  LANGUAGES C CXX)
add_airwindows_plugin(${PROJECT_NAME} plugin.cpp miniaudio.h bit_vector.hpp)
