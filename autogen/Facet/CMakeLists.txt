cmake_minimum_required(VERSION 3.14)

project(
  Facet
  DESCRIPTION "Facet is a new kind of hard clip that adds two sharp corners into the wave."
  HOMEPAGE_URL "https://www.airwindows.com"
  LANGUAGES C CXX)
add_airwindows_plugin(${PROJECT_NAME} plugin.cpp miniaudio.h bit_vector.hpp)
