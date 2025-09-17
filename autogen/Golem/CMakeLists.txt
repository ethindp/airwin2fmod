cmake_minimum_required(VERSION 3.14)

project(
  Golem
  DESCRIPTION "Golem lets you blend a stereo track of two mics on an amp."
  HOMEPAGE_URL "https://www.airwindows.com"
  LANGUAGES C CXX)
add_airwindows_plugin(${PROJECT_NAME} plugin.cpp miniaudio.h bit_vector.hpp)
