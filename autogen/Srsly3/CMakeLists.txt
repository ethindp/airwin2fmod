cmake_minimum_required(VERSION 3.14)

project(
  Srsly3
  DESCRIPTION "Srsly3 is Srsly2, with a Nonlin control to analogify the filters."
  HOMEPAGE_URL "https://www.airwindows.com"
  LANGUAGES C CXX)
add_airwindows_plugin(${PROJECT_NAME} plugin.cpp miniaudio.h bit_vector.hpp)
