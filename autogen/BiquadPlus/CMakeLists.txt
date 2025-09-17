cmake_minimum_required(VERSION 3.14)

project(
  BiquadPlus
  DESCRIPTION "BiquadPlus is Biquad plus zipper noise suppression! For twiddling the controls."
  HOMEPAGE_URL "https://www.airwindows.com"
  LANGUAGES C CXX)
add_airwindows_plugin(${PROJECT_NAME} plugin.cpp miniaudio.h bit_vector.hpp)
