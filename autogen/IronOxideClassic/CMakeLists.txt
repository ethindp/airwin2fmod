cmake_minimum_required(VERSION 3.14)

project(
  IronOxideClassic
  DESCRIPTION "IronOxideClassic is the purer, simpler, early form of Iron Oxide before all the features."
  HOMEPAGE_URL "https://www.airwindows.com"
  LANGUAGES C CXX)
add_airwindows_plugin(${PROJECT_NAME} plugin.cpp miniaudio.h bit_vector.hpp)
