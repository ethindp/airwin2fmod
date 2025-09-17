cmake_minimum_required(VERSION 3.14)

project(
  Energy2
  DESCRIPTION "Energy2 is electrifying fixed-frequency treble boosts for high sample rate."
  HOMEPAGE_URL "https://www.airwindows.com"
  LANGUAGES C CXX)
add_airwindows_plugin(${PROJECT_NAME} plugin.cpp miniaudio.h bit_vector.hpp)
