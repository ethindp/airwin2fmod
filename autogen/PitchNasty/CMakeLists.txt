cmake_minimum_required(VERSION 3.14)

project(
  PitchNasty
  DESCRIPTION "PitchNasty is a primitive pitch shifter that also has primitive time-stretch artifacts."
  HOMEPAGE_URL "https://www.airwindows.com"
  LANGUAGES C CXX)
add_airwindows_plugin(${PROJECT_NAME} plugin.cpp miniaudio.h bit_vector.hpp)
