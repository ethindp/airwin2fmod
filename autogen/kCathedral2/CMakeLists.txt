cmake_minimum_required(VERSION 3.14)

project(
  kCathedral2
  DESCRIPTION "kCathedral2 is a giant reverby space modeled after the Bricasti Cathedral."
  HOMEPAGE_URL "https://www.airwindows.com"
  LANGUAGES C CXX)
add_airwindows_plugin(${PROJECT_NAME} plugin.cpp miniaudio.h bit_vector.hpp)
