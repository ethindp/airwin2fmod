cmake_minimum_required(VERSION 3.14)

project(
  RawTimbers
  DESCRIPTION "RawTimbers is just the quantization from Dither Me Timbers… and the opposite, as a brightener."
  HOMEPAGE_URL "https://www.airwindows.com"
  LANGUAGES C CXX)
add_airwindows_plugin(${PROJECT_NAME} plugin.cpp miniaudio.h bit_vector.hpp)
