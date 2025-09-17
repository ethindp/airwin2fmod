cmake_minimum_required(VERSION 3.14)

project(
  CrunchCoat
  DESCRIPTION "CrunchCoat is a cursed retro digital reverb!"
  HOMEPAGE_URL "https://www.airwindows.com"
  LANGUAGES C CXX)
add_airwindows_plugin(${PROJECT_NAME} plugin.cpp miniaudio.h bit_vector.hpp)
