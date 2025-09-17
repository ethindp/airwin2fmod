cmake_minimum_required(VERSION 3.14)

project(
  Exciter
  DESCRIPTION "Exciter is an Aural Exciter plugin that can be both subtle and extreme."
  HOMEPAGE_URL "https://www.airwindows.com"
  LANGUAGES C CXX)
add_airwindows_plugin(${PROJECT_NAME} plugin.cpp miniaudio.h bit_vector.hpp)
