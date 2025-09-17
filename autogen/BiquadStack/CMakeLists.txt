cmake_minimum_required(VERSION 3.14)

project(
  BiquadStack
  DESCRIPTION "BiquadStack is a way of making a parametric EQ out of stacked biquad filters."
  HOMEPAGE_URL "https://www.airwindows.com"
  LANGUAGES C CXX)
add_airwindows_plugin(${PROJECT_NAME} plugin.cpp miniaudio.h bit_vector.hpp)
