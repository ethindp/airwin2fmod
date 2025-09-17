cmake_minimum_required(VERSION 3.14)

project(
  Acceleration
  DESCRIPTION "Acceleration is an acceleration limiter that tames edge, leaves brightness."
  HOMEPAGE_URL "https://www.airwindows.com"
  LANGUAGES C CXX)
add_airwindows_plugin(${PROJECT_NAME} plugin.cpp miniaudio.h bit_vector.hpp)
