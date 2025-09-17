cmake_minimum_required(VERSION 3.14)

project(
  ZHighpass
  DESCRIPTION "ZHighpass is a highpass made to sound and act like the Emu e6400 Ultra highpass."
  HOMEPAGE_URL "https://www.airwindows.com"
  LANGUAGES C CXX)
add_airwindows_plugin(${PROJECT_NAME} plugin.cpp miniaudio.h bit_vector.hpp)
