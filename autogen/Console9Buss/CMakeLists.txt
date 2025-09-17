cmake_minimum_required(VERSION 3.14)

project(
  Console9Buss
  DESCRIPTION "Console9Buss is just the summing from ConsoleX."
  HOMEPAGE_URL "https://www.airwindows.com"
  LANGUAGES C CXX)
add_airwindows_plugin(${PROJECT_NAME} plugin.cpp miniaudio.h bit_vector.hpp)
