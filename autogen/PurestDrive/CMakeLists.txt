cmake_minimum_required(VERSION 3.14)

project(
  PurestDrive
  DESCRIPTION "PurestDrive is the magic saturation plugin of subtlety and French House tone."
  HOMEPAGE_URL "https://www.airwindows.com"
  LANGUAGES C CXX)
add_airwindows_plugin(${PROJECT_NAME} plugin.cpp miniaudio.h bit_vector.hpp)
