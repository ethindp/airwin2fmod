cmake_minimum_required(VERSION 3.14)

project(
  kPlateB
  DESCRIPTION "kPlateB is a plate reverb, not unlike its namesake atop Abbey Road."
  HOMEPAGE_URL "https://www.airwindows.com"
  LANGUAGES C CXX)
add_airwindows_plugin(${PROJECT_NAME} plugin.cpp miniaudio.h bit_vector.hpp)
