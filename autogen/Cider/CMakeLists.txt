cmake_minimum_required(VERSION 3.14)

project(
  Cider
  DESCRIPTION "Cider is a re-release of another old Character plugin."
  HOMEPAGE_URL "https://www.airwindows.com"
  LANGUAGES C CXX)
add_airwindows_plugin(${PROJECT_NAME} plugin.cpp miniaudio.h bit_vector.hpp)
