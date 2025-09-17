cmake_minimum_required(VERSION 3.14)

project(
  ChimeyGuitar
  DESCRIPTION "ChimeyGuitar is a supremely compressible instrument amp."
  HOMEPAGE_URL "https://www.airwindows.com"
  LANGUAGES C CXX)
add_airwindows_plugin(${PROJECT_NAME} plugin.cpp miniaudio.h bit_vector.hpp)
