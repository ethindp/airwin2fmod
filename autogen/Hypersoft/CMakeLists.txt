cmake_minimum_required(VERSION 3.14)

project(
  Hypersoft
  DESCRIPTION "Hypersoft is a more extreme form of soft-clipper."
  HOMEPAGE_URL "https://www.airwindows.com"
  LANGUAGES C CXX)
add_airwindows_plugin(${PROJECT_NAME} plugin.cpp miniaudio.h bit_vector.hpp)
