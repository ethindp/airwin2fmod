cmake_minimum_required(VERSION 3.14)

project(
  Pressure6
  DESCRIPTION "Pressure6 refines the Pressure compressor and how it moves."
  HOMEPAGE_URL "https://www.airwindows.com"
  LANGUAGES C CXX)
add_airwindows_plugin(${PROJECT_NAME} plugin.cpp miniaudio.h bit_vector.hpp)
