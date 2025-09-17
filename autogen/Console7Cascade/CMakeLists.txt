cmake_minimum_required(VERSION 3.14)

project(
  Console7Cascade
  DESCRIPTION "Console7Cascade is a drop-in replacement for Console7Channel that allows for MUCH higher gain."
  HOMEPAGE_URL "https://www.airwindows.com"
  LANGUAGES C CXX)
add_airwindows_plugin(${PROJECT_NAME} plugin.cpp miniaudio.h bit_vector.hpp)
