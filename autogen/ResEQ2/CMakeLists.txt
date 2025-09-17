cmake_minimum_required(VERSION 3.14)

project(
  ResEQ2
  DESCRIPTION "ResEQ2 is a single, sharp, sonorous mid peak."
  HOMEPAGE_URL "https://www.airwindows.com"
  LANGUAGES C CXX)
add_airwindows_plugin(${PROJECT_NAME} plugin.cpp miniaudio.h bit_vector.hpp)
