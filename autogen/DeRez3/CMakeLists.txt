cmake_minimum_required(VERSION 3.14)

project(
  DeRez3
  DESCRIPTION "DeRez3 reinvents retro digital tones."
  HOMEPAGE_URL "https://www.airwindows.com"
  LANGUAGES C CXX)
add_airwindows_plugin(${PROJECT_NAME} plugin.cpp miniaudio.h bit_vector.hpp)
