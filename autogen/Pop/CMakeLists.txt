cmake_minimum_required(VERSION 3.14)

project(
  Pop
  DESCRIPTION "Pop is a crazy overcompressor with a very exaggerated sound."
  HOMEPAGE_URL "https://www.airwindows.com"
  LANGUAGES C CXX)
add_airwindows_plugin(${PROJECT_NAME} plugin.cpp miniaudio.h bit_vector.hpp)
