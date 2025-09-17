cmake_minimum_required(VERSION 3.14)

project(
  kCosmos
  DESCRIPTION "kCosmos is infinite space ambient, or titanic hall."
  HOMEPAGE_URL "https://www.airwindows.com"
  LANGUAGES C CXX)
add_airwindows_plugin(${PROJECT_NAME} plugin.cpp miniaudio.h bit_vector.hpp)
