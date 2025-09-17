cmake_minimum_required(VERSION 3.14)

project(
  AngleEQ
  DESCRIPTION "AngleEQ is a strange and colorful EQ."
  HOMEPAGE_URL "https://www.airwindows.com"
  LANGUAGES C CXX)
add_airwindows_plugin(${PROJECT_NAME} plugin.cpp miniaudio.h bit_vector.hpp)
