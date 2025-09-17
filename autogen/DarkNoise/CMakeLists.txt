cmake_minimum_required(VERSION 3.14)

project(
  DarkNoise
  DESCRIPTION "DarkNoise is an alternative method for producing bassier noise directly. Sound design stuff."
  HOMEPAGE_URL "https://www.airwindows.com"
  LANGUAGES C CXX)
add_airwindows_plugin(${PROJECT_NAME} plugin.cpp miniaudio.h bit_vector.hpp)
