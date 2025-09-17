cmake_minimum_required(VERSION 3.14)

project(
  Slew3
  DESCRIPTION "Slew3 is a new approach to slew clipping meant for a more analog-like darkening effect."
  HOMEPAGE_URL "https://www.airwindows.com"
  LANGUAGES C CXX)
add_airwindows_plugin(${PROJECT_NAME} plugin.cpp miniaudio.h bit_vector.hpp)
