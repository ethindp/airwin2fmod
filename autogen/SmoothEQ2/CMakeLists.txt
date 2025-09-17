cmake_minimum_required(VERSION 3.14)

project(
  SmoothEQ2
  DESCRIPTION "SmoothEQ2 is a wildly intuitive vibe EQ with clarity and intensity."
  HOMEPAGE_URL "https://www.airwindows.com"
  LANGUAGES C CXX)
add_airwindows_plugin(${PROJECT_NAME} plugin.cpp miniaudio.h bit_vector.hpp)
