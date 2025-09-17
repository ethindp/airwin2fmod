cmake_minimum_required(VERSION 3.14)

project(
  ToTape6
  DESCRIPTION "ToTape6 is Airwindows tape emulation for 2020!"
  HOMEPAGE_URL "https://www.airwindows.com"
  LANGUAGES C CXX)
add_airwindows_plugin(${PROJECT_NAME} plugin.cpp miniaudio.h bit_vector.hpp)
