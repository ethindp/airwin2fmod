cmake_minimum_required(VERSION 3.14)

project(
  TapeHack
  DESCRIPTION "TapeHack is a new dimension in tape realism, abstracted to software."
  HOMEPAGE_URL "https://www.airwindows.com"
  LANGUAGES C CXX)
add_airwindows_plugin(${PROJECT_NAME} plugin.cpp miniaudio.h bit_vector.hpp)
