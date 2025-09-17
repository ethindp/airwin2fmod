cmake_minimum_required(VERSION 3.14)

project(
  kPlate240
  DESCRIPTION "kPlate240 is for the texture of smaller, gold foil reverb."
  HOMEPAGE_URL "https://www.airwindows.com"
  LANGUAGES C CXX)
add_airwindows_plugin(${PROJECT_NAME} plugin.cpp miniaudio.h bit_vector.hpp)
