cmake_minimum_required(VERSION 3.14)

project(
  Console5DarkCh
  DESCRIPTION "Console5DarkCh is a richer, warmer Console system."
  HOMEPAGE_URL "https://www.airwindows.com"
  LANGUAGES C CXX)
add_airwindows_plugin(${PROJECT_NAME} plugin.cpp miniaudio.h bit_vector.hpp)
