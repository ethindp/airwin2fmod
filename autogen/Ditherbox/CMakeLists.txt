cmake_minimum_required(VERSION 3.14)

project(
  Ditherbox
  DESCRIPTION "Ditherbox is a switchable selection of dithers in 16 and 24 bit, plus monitoring tools."
  HOMEPAGE_URL "https://www.airwindows.com"
  LANGUAGES C CXX)
add_airwindows_plugin(${PROJECT_NAME} plugin.cpp miniaudio.h bit_vector.hpp)
