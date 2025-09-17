cmake_minimum_required(VERSION 3.14)

project(
  TremoSquare
  DESCRIPTION "TremoSquare is a squarewave tremolo effect that only switches on zero crossings."
  HOMEPAGE_URL "https://www.airwindows.com"
  LANGUAGES C CXX)
add_airwindows_plugin(${PROJECT_NAME} plugin.cpp miniaudio.h bit_vector.hpp)
