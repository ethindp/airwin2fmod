cmake_minimum_required(VERSION 3.14)

project(
  Air4
  DESCRIPTION "Air4 extends Air3 with controllable high frequency limiting."
  HOMEPAGE_URL "https://www.airwindows.com"
  LANGUAGES C CXX)
add_airwindows_plugin(${PROJECT_NAME} plugin.cpp miniaudio.h bit_vector.hpp)
