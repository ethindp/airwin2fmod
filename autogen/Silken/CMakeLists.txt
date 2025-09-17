cmake_minimum_required(VERSION 3.14)

project(
  Silken
  DESCRIPTION "Silken is a high frequency boost that gives ambience and texture."
  HOMEPAGE_URL "https://www.airwindows.com"
  LANGUAGES C CXX)
add_airwindows_plugin(${PROJECT_NAME} plugin.cpp miniaudio.h bit_vector.hpp)
