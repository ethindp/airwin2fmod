cmake_minimum_required(VERSION 3.14)

project(
  Neverland
  DESCRIPTION "Neverland is a re-release of my old Neve-style color adder, exacly as it was."
  HOMEPAGE_URL "https://www.airwindows.com"
  LANGUAGES C CXX)
add_airwindows_plugin(${PROJECT_NAME} plugin.cpp miniaudio.h bit_vector.hpp)
