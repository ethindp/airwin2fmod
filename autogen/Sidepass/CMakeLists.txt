cmake_minimum_required(VERSION 3.14)

project(
  Sidepass
  DESCRIPTION "Sidepass is a simple utility plugin, a highpass on the side channel. Mono-maker."
  HOMEPAGE_URL "https://www.airwindows.com"
  LANGUAGES C CXX)
add_airwindows_plugin(${PROJECT_NAME} plugin.cpp miniaudio.h bit_vector.hpp)
