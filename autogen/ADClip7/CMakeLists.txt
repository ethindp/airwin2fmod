cmake_minimum_required(VERSION 3.14)

project(
  ADClip7
  DESCRIPTION "ADClip7 is the original Airwindows loudness maximizer/ peak control."
  HOMEPAGE_URL "https://www.airwindows.com"
  LANGUAGES C CXX)
add_airwindows_plugin(${PROJECT_NAME} plugin.cpp miniaudio.h bit_vector.hpp)
