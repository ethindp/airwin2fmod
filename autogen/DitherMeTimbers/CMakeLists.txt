cmake_minimum_required(VERSION 3.14)

project(
  DitherMeTimbers
  DESCRIPTION "DitherMeTimbers is dark deep 'dither' in a 24 bit version."
  HOMEPAGE_URL "https://www.airwindows.com"
  LANGUAGES C CXX)
add_airwindows_plugin(${PROJECT_NAME} plugin.cpp miniaudio.h bit_vector.hpp)
