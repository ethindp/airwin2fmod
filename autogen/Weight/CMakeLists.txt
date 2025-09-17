cmake_minimum_required(VERSION 3.14)

project(
  Weight
  DESCRIPTION "Weight is a very accurate sub-bass boost based on Holt."
  HOMEPAGE_URL "https://www.airwindows.com"
  LANGUAGES C CXX)
add_airwindows_plugin(${PROJECT_NAME} plugin.cpp miniaudio.h bit_vector.hpp)
