cmake_minimum_required(VERSION 3.14)

project(
  HighGlossDither
  DESCRIPTION "HighGlossDither is a hybrid between shiny dither and truncation! Unnatural science experiment."
  HOMEPAGE_URL "https://www.airwindows.com"
  LANGUAGES C CXX)
add_airwindows_plugin(${PROJECT_NAME} plugin.cpp miniaudio.h bit_vector.hpp)
