cmake_minimum_required(VERSION 3.14)

project(
  Isolator3
  DESCRIPTION "Isolator3 is Isolator2, but on one slider, with a band-narrower control."
  HOMEPAGE_URL "https://www.airwindows.com"
  LANGUAGES C CXX)
add_airwindows_plugin(${PROJECT_NAME} plugin.cpp miniaudio.h bit_vector.hpp)
