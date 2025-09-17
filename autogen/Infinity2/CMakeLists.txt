cmake_minimum_required(VERSION 3.14)

project(
  Infinity2
  DESCRIPTION "Infinity2 expands Infinity with more tone shaping and a much-requested kill-switch!"
  HOMEPAGE_URL "https://www.airwindows.com"
  LANGUAGES C CXX)
add_airwindows_plugin(${PROJECT_NAME} plugin.cpp miniaudio.h bit_vector.hpp)
