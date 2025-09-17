cmake_minimum_required(VERSION 3.14)

project(
  Pockey
  DESCRIPTION "Pockey is 12 bit (and under) lo-fi hiphop in a plugin."
  HOMEPAGE_URL "https://www.airwindows.com"
  LANGUAGES C CXX)
add_airwindows_plugin(${PROJECT_NAME} plugin.cpp miniaudio.h bit_vector.hpp)
