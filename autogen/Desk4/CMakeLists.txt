cmake_minimum_required(VERSION 3.14)

project(
  Desk4
  DESCRIPTION "Desk4 is distinctive analog coloration (a tuneable version of the control-less Desk plugins)"
  HOMEPAGE_URL "https://www.airwindows.com"
  LANGUAGES C CXX)
add_airwindows_plugin(${PROJECT_NAME} plugin.cpp miniaudio.h bit_vector.hpp)
