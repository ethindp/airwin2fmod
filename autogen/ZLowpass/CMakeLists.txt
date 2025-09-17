cmake_minimum_required(VERSION 3.14)

project(
  ZLowpass
  DESCRIPTION "ZLowpass is a lowpass made to sound and act like the Emu e6400 Ultra lowpass."
  HOMEPAGE_URL "https://www.airwindows.com"
  LANGUAGES C CXX)
add_airwindows_plugin(${PROJECT_NAME} plugin.cpp miniaudio.h bit_vector.hpp)
