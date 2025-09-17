cmake_minimum_required(VERSION 3.14)

project(
  NotJustAnotherCD
  DESCRIPTION "NotJustAnotherCD is a next-gen wordlength reducers for 16 bit with DeRez."
  HOMEPAGE_URL "https://www.airwindows.com"
  LANGUAGES C CXX)
add_airwindows_plugin(${PROJECT_NAME} plugin.cpp miniaudio.h bit_vector.hpp)
