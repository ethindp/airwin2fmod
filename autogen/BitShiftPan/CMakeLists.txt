cmake_minimum_required(VERSION 3.14)

project(
  BitShiftPan
  DESCRIPTION "BitShiftPan gives you a gain and a pan control that are ONLY done using bit shifts."
  HOMEPAGE_URL "https://www.airwindows.com"
  LANGUAGES C CXX)
add_airwindows_plugin(${PROJECT_NAME} plugin.cpp miniaudio.h bit_vector.hpp)
