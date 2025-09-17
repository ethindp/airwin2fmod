cmake_minimum_required(VERSION 3.14)

project(
  ToTape7
  DESCRIPTION "ToTape7 is Airwindows tape emulation with bias and Dubly."
  HOMEPAGE_URL "https://www.airwindows.com"
  LANGUAGES C CXX)
add_airwindows_plugin(${PROJECT_NAME} plugin.cpp miniaudio.h bit_vector.hpp)
