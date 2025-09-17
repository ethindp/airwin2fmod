cmake_minimum_required(VERSION 3.14)

project(
  TapeBias
  DESCRIPTION "TapeBias is a new piece of ToTape allowing you to underbias or overbias."
  HOMEPAGE_URL "https://www.airwindows.com"
  LANGUAGES C CXX)
add_airwindows_plugin(${PROJECT_NAME} plugin.cpp miniaudio.h bit_vector.hpp)
