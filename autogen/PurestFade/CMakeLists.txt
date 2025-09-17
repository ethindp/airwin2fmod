cmake_minimum_required(VERSION 3.14)

project(
  PurestFade
  DESCRIPTION "PurestFade is just like PurestGain, but for LONG fades."
  HOMEPAGE_URL "https://www.airwindows.com"
  LANGUAGES C CXX)
add_airwindows_plugin(${PROJECT_NAME} plugin.cpp miniaudio.h bit_vector.hpp)
