cmake_minimum_required(VERSION 3.14)

project(
  Fracture
  DESCRIPTION "Fracture is a frequency multiplier/waveshaper with a soft disruption to the sound."
  HOMEPAGE_URL "https://www.airwindows.com"
  LANGUAGES C CXX)
add_airwindows_plugin(${PROJECT_NAME} plugin.cpp miniaudio.h bit_vector.hpp)
