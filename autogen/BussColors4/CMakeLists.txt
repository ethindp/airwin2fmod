cmake_minimum_required(VERSION 3.14)

project(
  BussColors4
  DESCRIPTION "BussColors4 is the Airwindows console emulations, now working up to 192K correctly."
  HOMEPAGE_URL "https://www.airwindows.com"
  LANGUAGES C CXX)
add_airwindows_plugin(${PROJECT_NAME} plugin.cpp miniaudio.h bit_vector.hpp)
