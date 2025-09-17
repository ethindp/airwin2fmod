cmake_minimum_required(VERSION 3.14)

project(
  Air3
  DESCRIPTION "Air3 creates a new form of air-band EQ based on Kalman filtering."
  HOMEPAGE_URL "https://www.airwindows.com"
  LANGUAGES C CXX)
add_airwindows_plugin(${PROJECT_NAME} plugin.cpp miniaudio.h bit_vector.hpp)
