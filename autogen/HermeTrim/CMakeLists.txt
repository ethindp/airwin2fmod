cmake_minimum_required(VERSION 3.14)

project(
  HermeTrim
  DESCRIPTION "HermeTrim is Very Fine Adjustments, otherwise just like EveryTrim."
  HOMEPAGE_URL "https://www.airwindows.com"
  LANGUAGES C CXX)
add_airwindows_plugin(${PROJECT_NAME} plugin.cpp miniaudio.h bit_vector.hpp)
