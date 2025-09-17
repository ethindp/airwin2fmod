cmake_minimum_required(VERSION 3.14)

project(
  Lowpass
  DESCRIPTION "Lowpass deepens the tone, leaves a gloss and textural modifications."
  HOMEPAGE_URL "https://www.airwindows.com"
  LANGUAGES C CXX)
add_airwindows_plugin(${PROJECT_NAME} plugin.cpp miniaudio.h bit_vector.hpp)
