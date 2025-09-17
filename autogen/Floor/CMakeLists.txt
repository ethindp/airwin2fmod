cmake_minimum_required(VERSION 3.14)

project(
  Floor
  DESCRIPTION "Floor is fake bottom octave for fun and profit!"
  HOMEPAGE_URL "https://www.airwindows.com"
  LANGUAGES C CXX)
add_airwindows_plugin(${PROJECT_NAME} plugin.cpp miniaudio.h bit_vector.hpp)
