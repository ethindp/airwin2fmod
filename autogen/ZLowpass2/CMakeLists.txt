cmake_minimum_required(VERSION 3.14)

project(
  ZLowpass2
  DESCRIPTION "ZLowpass2 acts more like the Emu e6400 Ultra lowpass in motion, with control smoothing."
  HOMEPAGE_URL "https://www.airwindows.com"
  LANGUAGES C CXX)
add_airwindows_plugin(${PROJECT_NAME} plugin.cpp miniaudio.h bit_vector.hpp)
