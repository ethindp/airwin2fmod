cmake_minimum_required(VERSION 3.14)

project(
  Mackity
  DESCRIPTION "Mackity is an emulation of the input stage of a vintage Mackie 1202!"
  HOMEPAGE_URL "https://www.airwindows.com"
  LANGUAGES C CXX)
add_airwindows_plugin(${PROJECT_NAME} plugin.cpp miniaudio.h bit_vector.hpp)
