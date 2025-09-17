cmake_minimum_required(VERSION 3.14)

project(
  Pressure5
  DESCRIPTION "Pressure5 expands Pressure4 with after-boost and built-in ClipOnly2."
  HOMEPAGE_URL "https://www.airwindows.com"
  LANGUAGES C CXX)
add_airwindows_plugin(${PROJECT_NAME} plugin.cpp miniaudio.h bit_vector.hpp)
