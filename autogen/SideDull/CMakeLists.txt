cmake_minimum_required(VERSION 3.14)

project(
  SideDull
  DESCRIPTION "SideDull is like Sidepass, but a lowpass on the side channel. Treble-centerer."
  HOMEPAGE_URL "https://www.airwindows.com"
  LANGUAGES C CXX)
add_airwindows_plugin(${PROJECT_NAME} plugin.cpp miniaudio.h bit_vector.hpp)
