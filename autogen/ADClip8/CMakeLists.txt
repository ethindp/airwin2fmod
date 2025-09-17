cmake_minimum_required(VERSION 3.14)

project(
  ADClip8
  DESCRIPTION "ADClip8 is the ultimate Airwindows loudenator/biggenator."
  HOMEPAGE_URL "https://www.airwindows.com"
  LANGUAGES C CXX)
add_airwindows_plugin(${PROJECT_NAME} plugin.cpp miniaudio.h bit_vector.hpp)
