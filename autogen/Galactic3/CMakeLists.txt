cmake_minimum_required(VERSION 3.14)

project(
  Galactic3
  DESCRIPTION "Galactic3 is exactly Galactic again, but with better undersampling."
  HOMEPAGE_URL "https://www.airwindows.com"
  LANGUAGES C CXX)
add_airwindows_plugin(${PROJECT_NAME} plugin.cpp miniaudio.h bit_vector.hpp)
