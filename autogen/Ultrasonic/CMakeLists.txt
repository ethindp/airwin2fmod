cmake_minimum_required(VERSION 3.14)

project(
  Ultrasonic
  DESCRIPTION "Ultrasonic is a very clean, plain, high quality supersonic filter, for using inside digital mixes."
  HOMEPAGE_URL "https://www.airwindows.com"
  LANGUAGES C CXX)
add_airwindows_plugin(${PROJECT_NAME} plugin.cpp miniaudio.h bit_vector.hpp)
