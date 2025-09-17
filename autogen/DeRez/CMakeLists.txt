cmake_minimum_required(VERSION 3.14)

project(
  DeRez
  DESCRIPTION "DeRez is an analog-style bit and sample rate crusher with continuous adjustments."
  HOMEPAGE_URL "https://www.airwindows.com"
  LANGUAGES C CXX)
add_airwindows_plugin(${PROJECT_NAME} plugin.cpp miniaudio.h bit_vector.hpp)
