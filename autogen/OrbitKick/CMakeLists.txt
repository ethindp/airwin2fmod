cmake_minimum_required(VERSION 3.14)

project(
  OrbitKick
  DESCRIPTION "OrbitKick is a bass generator and kick drum reinforcer."
  HOMEPAGE_URL "https://www.airwindows.com"
  LANGUAGES C CXX)
add_airwindows_plugin(${PROJECT_NAME} plugin.cpp miniaudio.h bit_vector.hpp)
