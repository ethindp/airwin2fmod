cmake_minimum_required(VERSION 3.14)

project(
  NodeDither
  DESCRIPTION "NodeDither is adjusta-TPDF-dither, like a dither flanger. Can do Paul and Tape settings."
  HOMEPAGE_URL "https://www.airwindows.com"
  LANGUAGES C CXX)
add_airwindows_plugin(${PROJECT_NAME} plugin.cpp miniaudio.h bit_vector.hpp)
