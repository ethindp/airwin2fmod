cmake_minimum_required(VERSION 3.14)

project(
  Average
  DESCRIPTION "Average is a distinctive sort of lowpass filter."
  HOMEPAGE_URL "https://www.airwindows.com"
  LANGUAGES C CXX)
add_airwindows_plugin(${PROJECT_NAME} plugin.cpp miniaudio.h bit_vector.hpp)
