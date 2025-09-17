cmake_minimum_required(VERSION 3.14)

project(
  DeCrackle
  DESCRIPTION "DeCrackle isolates clicks and vinyl crackles to remove them."
  HOMEPAGE_URL "https://www.airwindows.com"
  LANGUAGES C CXX)
add_airwindows_plugin(${PROJECT_NAME} plugin.cpp miniaudio.h bit_vector.hpp)
