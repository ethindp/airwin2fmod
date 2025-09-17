cmake_minimum_required(VERSION 3.14)

project(
  NotJustAnotherDither
  DESCRIPTION "NotJustAnotherDither is a next-gen wordlength reducers for 24 bit with DeRez."
  HOMEPAGE_URL "https://www.airwindows.com"
  LANGUAGES C CXX)
add_airwindows_plugin(${PROJECT_NAME} plugin.cpp miniaudio.h bit_vector.hpp)
