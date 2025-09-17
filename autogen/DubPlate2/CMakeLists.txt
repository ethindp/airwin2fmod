cmake_minimum_required(VERSION 3.14)

project(
  DubPlate2
  DESCRIPTION "DubPlate2 is like an ITB mastering house for electronic music."
  HOMEPAGE_URL "https://www.airwindows.com"
  LANGUAGES C CXX)
add_airwindows_plugin(${PROJECT_NAME} plugin.cpp miniaudio.h bit_vector.hpp)
