cmake_minimum_required(VERSION 3.14)

project(
  Console7Crunch
  DESCRIPTION "Console7Crunch shows you Cascade but with its EQ weighted for more edge and grit."
  HOMEPAGE_URL "https://www.airwindows.com"
  LANGUAGES C CXX)
add_airwindows_plugin(${PROJECT_NAME} plugin.cpp miniaudio.h bit_vector.hpp)
