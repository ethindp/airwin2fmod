cmake_minimum_required(VERSION 3.14)

project(
  Overheads
  DESCRIPTION "Overheads is for compressing only part of the sound, strangely!"
  HOMEPAGE_URL "https://www.airwindows.com"
  LANGUAGES C CXX)
add_airwindows_plugin(${PROJECT_NAME} plugin.cpp miniaudio.h bit_vector.hpp)
