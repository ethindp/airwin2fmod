cmake_minimum_required(VERSION 3.14)

project(
  Channel4
  DESCRIPTION "Channel4 is a tone coloring plugin that gives more of an analog feel."
  HOMEPAGE_URL "https://www.airwindows.com"
  LANGUAGES C CXX)
add_airwindows_plugin(${PROJECT_NAME} plugin.cpp miniaudio.h bit_vector.hpp)
