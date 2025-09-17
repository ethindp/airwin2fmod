cmake_minimum_required(VERSION 3.14)

project(
  GrooveWear
  DESCRIPTION "GrooveWear is for scrubbing highs off mechanically like a stylus would."
  HOMEPAGE_URL "https://www.airwindows.com"
  LANGUAGES C CXX)
add_airwindows_plugin(${PROJECT_NAME} plugin.cpp miniaudio.h bit_vector.hpp)
