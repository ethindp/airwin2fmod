cmake_minimum_required(VERSION 3.14)

project(
  BassKit
  DESCRIPTION "BassKit is centered bass reinforcement with subs fill. Clean and controllable."
  HOMEPAGE_URL "https://www.airwindows.com"
  LANGUAGES C CXX)
add_airwindows_plugin(${PROJECT_NAME} plugin.cpp miniaudio.h bit_vector.hpp)
