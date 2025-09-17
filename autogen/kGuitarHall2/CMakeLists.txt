cmake_minimum_required(VERSION 3.14)

project(
  kGuitarHall2
  DESCRIPTION "kGuitarHall2 puts things in a Loud Room."
  HOMEPAGE_URL "https://www.airwindows.com"
  LANGUAGES C CXX)
add_airwindows_plugin(${PROJECT_NAME} plugin.cpp miniaudio.h bit_vector.hpp)
