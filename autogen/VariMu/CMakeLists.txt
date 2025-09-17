cmake_minimum_required(VERSION 3.14)

project(
  VariMu
  DESCRIPTION "VariMu is a more organic variation on Pressure (a compressor)"
  HOMEPAGE_URL "https://www.airwindows.com"
  LANGUAGES C CXX)
add_airwindows_plugin(${PROJECT_NAME} plugin.cpp miniaudio.h bit_vector.hpp)
