cmake_minimum_required(VERSION 3.14)

project(
  PurestWarm
  DESCRIPTION "PurestWarm is a subtle tone shaper and warmth adder."
  HOMEPAGE_URL "https://www.airwindows.com"
  LANGUAGES C CXX)
add_airwindows_plugin(${PROJECT_NAME} plugin.cpp miniaudio.h bit_vector.hpp)
