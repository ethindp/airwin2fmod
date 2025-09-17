cmake_minimum_required(VERSION 3.14)

project(
  Distance
  DESCRIPTION "Distance is a sound design or reverb far-away-izer."
  HOMEPAGE_URL "https://www.airwindows.com"
  LANGUAGES C CXX)
add_airwindows_plugin(${PROJECT_NAME} plugin.cpp miniaudio.h bit_vector.hpp)
