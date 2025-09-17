cmake_minimum_required(VERSION 3.14)

project(
  StarChild2
  DESCRIPTION "StarChild2 is a weird digital ambience/echo plugin adapted to high sample rates."
  HOMEPAGE_URL "https://www.airwindows.com"
  LANGUAGES C CXX)
add_airwindows_plugin(${PROJECT_NAME} plugin.cpp miniaudio.h bit_vector.hpp)
