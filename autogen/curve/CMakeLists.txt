cmake_minimum_required(VERSION 3.14)

project(
  curve
  DESCRIPTION "curve is the simplest, purest form of Recurve with no extra boosts."
  HOMEPAGE_URL "https://www.airwindows.com"
  LANGUAGES C CXX)
add_airwindows_plugin(${PROJECT_NAME} plugin.cpp miniaudio.h bit_vector.hpp)
