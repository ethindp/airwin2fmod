cmake_minimum_required(VERSION 3.14)

project(
  Isolator2
  DESCRIPTION "Isolator2 is Isolator, but with control smoothing and a new resonance booster."
  HOMEPAGE_URL "https://www.airwindows.com"
  LANGUAGES C CXX)
add_airwindows_plugin(${PROJECT_NAME} plugin.cpp miniaudio.h bit_vector.hpp)
