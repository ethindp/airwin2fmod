cmake_minimum_required(VERSION 3.14)

project(
  Balanced
  DESCRIPTION "Balanced lets you run an XLR input into a stereo input, sum it to mono, and use it."
  HOMEPAGE_URL "https://www.airwindows.com"
  LANGUAGES C CXX)
add_airwindows_plugin(${PROJECT_NAME} plugin.cpp miniaudio.h bit_vector.hpp)
