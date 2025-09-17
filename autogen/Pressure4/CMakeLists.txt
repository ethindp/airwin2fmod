cmake_minimum_required(VERSION 3.14)

project(
  Pressure4
  DESCRIPTION "Pressure4 is a compressor adjustable between vari-mu and ‘new york’ peak-retaining behaviors."
  HOMEPAGE_URL "https://www.airwindows.com"
  LANGUAGES C CXX)
add_airwindows_plugin(${PROJECT_NAME} plugin.cpp miniaudio.h bit_vector.hpp)
