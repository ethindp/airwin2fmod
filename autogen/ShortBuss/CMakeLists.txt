cmake_minimum_required(VERSION 3.14)

project(
  ShortBuss
  DESCRIPTION "ShortBuss chases second harmonic, to add or remove it."
  HOMEPAGE_URL "https://www.airwindows.com"
  LANGUAGES C CXX)
add_airwindows_plugin(${PROJECT_NAME} plugin.cpp miniaudio.h bit_vector.hpp)
