cmake_minimum_required(VERSION 3.14)

project(
  SubTight
  DESCRIPTION "SubTight uses a variation on the Creature algorithm to tighten sub-lows."
  HOMEPAGE_URL "https://www.airwindows.com"
  LANGUAGES C CXX)
add_airwindows_plugin(${PROJECT_NAME} plugin.cpp miniaudio.h bit_vector.hpp)
