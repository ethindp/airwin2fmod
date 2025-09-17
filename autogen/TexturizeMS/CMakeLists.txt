cmake_minimum_required(VERSION 3.14)

project(
  TexturizeMS
  DESCRIPTION "TexturizeMS is a hidden-noise plugin for adding mid-side sonic texture to things."
  HOMEPAGE_URL "https://www.airwindows.com"
  LANGUAGES C CXX)
add_airwindows_plugin(${PROJECT_NAME} plugin.cpp miniaudio.h bit_vector.hpp)
