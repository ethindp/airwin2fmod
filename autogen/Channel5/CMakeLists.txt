cmake_minimum_required(VERSION 3.14)

project(
  Channel5
  DESCRIPTION "Channel5 is Channel for 2018, with new subtleties."
  HOMEPAGE_URL "https://www.airwindows.com"
  LANGUAGES C CXX)
add_airwindows_plugin(${PROJECT_NAME} plugin.cpp miniaudio.h bit_vector.hpp)
