cmake_minimum_required(VERSION 3.14)

project(
  SlewOnly
  DESCRIPTION "SlewOnly is a mix check plugin that shows you only the extreme highs."
  HOMEPAGE_URL "https://www.airwindows.com"
  LANGUAGES C CXX)
add_airwindows_plugin(${PROJECT_NAME} plugin.cpp miniaudio.h bit_vector.hpp)
