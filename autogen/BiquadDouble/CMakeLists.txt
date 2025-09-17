cmake_minimum_required(VERSION 3.14)

project(
  BiquadDouble
  DESCRIPTION "BiquadDouble is a handy Airwindows cascaded biquad filter: steeper roll-off before resonance."
  HOMEPAGE_URL "https://www.airwindows.com"
  LANGUAGES C CXX)
add_airwindows_plugin(${PROJECT_NAME} plugin.cpp miniaudio.h bit_vector.hpp)
