cmake_minimum_required(VERSION 3.14)

project(
  Highpass2
  DESCRIPTION "Highpass2 is an unusual-sounding variable-slope highpass filter."
  HOMEPAGE_URL "https://www.airwindows.com"
  LANGUAGES C CXX)
add_airwindows_plugin(${PROJECT_NAME} plugin.cpp miniaudio.h bit_vector.hpp)
