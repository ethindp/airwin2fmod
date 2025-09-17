cmake_minimum_required(VERSION 3.14)

project(
  ButterComp2
  DESCRIPTION "ButterComp2 is improved ButterComp with an output control and sound upgrades."
  HOMEPAGE_URL "https://www.airwindows.com"
  LANGUAGES C CXX)
add_airwindows_plugin(${PROJECT_NAME} plugin.cpp miniaudio.h bit_vector.hpp)
