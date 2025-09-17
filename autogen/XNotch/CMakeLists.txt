cmake_minimum_required(VERSION 3.14)

project(
  XNotch
  DESCRIPTION "XNotch is a distorted digital EQ, not as glitchy as the others."
  HOMEPAGE_URL "https://www.airwindows.com"
  LANGUAGES C CXX)
add_airwindows_plugin(${PROJECT_NAME} plugin.cpp miniaudio.h bit_vector.hpp)
