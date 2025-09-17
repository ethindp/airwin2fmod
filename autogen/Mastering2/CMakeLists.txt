cmake_minimum_required(VERSION 3.14)

project(
  Mastering2
  DESCRIPTION "Mastering2 is Airwindows style, and can do elliptical EQ now!"
  HOMEPAGE_URL "https://www.airwindows.com"
  LANGUAGES C CXX)
add_airwindows_plugin(${PROJECT_NAME} plugin.cpp miniaudio.h bit_vector.hpp)
