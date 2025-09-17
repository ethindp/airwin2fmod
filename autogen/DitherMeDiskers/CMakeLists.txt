cmake_minimum_required(VERSION 3.14)

project(
  DitherMeDiskers
  DESCRIPTION "DitherMeDiskers is dark deep 'dither' in a 16 bit version."
  HOMEPAGE_URL "https://www.airwindows.com"
  LANGUAGES C CXX)
add_airwindows_plugin(${PROJECT_NAME} plugin.cpp miniaudio.h bit_vector.hpp)
