cmake_minimum_required(VERSION 3.14)

project(
  Creature
  DESCRIPTION "Creature is a soft slew saturator, a new class of noisechanger."
  HOMEPAGE_URL "https://www.airwindows.com"
  LANGUAGES C CXX)
add_airwindows_plugin(${PROJECT_NAME} plugin.cpp miniaudio.h bit_vector.hpp)
