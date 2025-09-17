cmake_minimum_required(VERSION 3.14)

project(
  ZBandpass
  DESCRIPTION "ZBandpass is a bandpass made to sound and act like the Emu e6400 Ultra bandpass."
  HOMEPAGE_URL "https://www.airwindows.com"
  LANGUAGES C CXX)
add_airwindows_plugin(${PROJECT_NAME} plugin.cpp miniaudio.h bit_vector.hpp)
