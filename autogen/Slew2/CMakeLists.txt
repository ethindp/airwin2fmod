cmake_minimum_required(VERSION 3.14)

project(
  Slew2
  DESCRIPTION "Slew2 works like a de-esser or acceleration limiter: controls extreme highs."
  HOMEPAGE_URL "https://www.airwindows.com"
  LANGUAGES C CXX)
add_airwindows_plugin(${PROJECT_NAME} plugin.cpp miniaudio.h bit_vector.hpp)
