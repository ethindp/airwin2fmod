cmake_minimum_required(VERSION 3.14)

project(
  Tremolo
  DESCRIPTION "Tremolo is fluctuating saturation curves for a tubey tremolo."
  HOMEPAGE_URL "https://www.airwindows.com"
  LANGUAGES C CXX)
add_airwindows_plugin(${PROJECT_NAME} plugin.cpp miniaudio.h bit_vector.hpp)
