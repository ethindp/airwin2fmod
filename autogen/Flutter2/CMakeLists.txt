cmake_minimum_required(VERSION 3.14)

project(
  Flutter2
  DESCRIPTION "Flutter2 is the flutter from ToTape7, standalone."
  HOMEPAGE_URL "https://www.airwindows.com"
  LANGUAGES C CXX)
add_airwindows_plugin(${PROJECT_NAME} plugin.cpp miniaudio.h bit_vector.hpp)
