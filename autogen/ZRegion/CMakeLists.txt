cmake_minimum_required(VERSION 3.14)

project(
  ZRegion
  DESCRIPTION "ZRegion is an Emu e6400 style Airwindows Region filter."
  HOMEPAGE_URL "https://www.airwindows.com"
  LANGUAGES C CXX)
add_airwindows_plugin(${PROJECT_NAME} plugin.cpp miniaudio.h bit_vector.hpp)
