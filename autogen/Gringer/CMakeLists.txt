cmake_minimum_required(VERSION 3.14)

project(
  Gringer
  DESCRIPTION "Gringer is a full-wave rectifier plugin, like a Green Ringer guitar effect."
  HOMEPAGE_URL "https://www.airwindows.com"
  LANGUAGES C CXX)
add_airwindows_plugin(${PROJECT_NAME} plugin.cpp miniaudio.h bit_vector.hpp)
