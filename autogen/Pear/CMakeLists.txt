cmake_minimum_required(VERSION 3.14)

project(
  Pear
  DESCRIPTION "Pear is the testbed for a new filter, implemented as a highpass/lowpass shelf."
  HOMEPAGE_URL "https://www.airwindows.com"
  LANGUAGES C CXX)
add_airwindows_plugin(${PROJECT_NAME} plugin.cpp miniaudio.h bit_vector.hpp)
