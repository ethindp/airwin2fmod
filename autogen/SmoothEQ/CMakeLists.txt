cmake_minimum_required(VERSION 3.14)

project(
  SmoothEQ
  DESCRIPTION "SmoothEQ is a sharp, accurate, transparent three-band filter."
  HOMEPAGE_URL "https://www.airwindows.com"
  LANGUAGES C CXX)
add_airwindows_plugin(${PROJECT_NAME} plugin.cpp miniaudio.h bit_vector.hpp)
