cmake_minimum_required(VERSION 3.14)

project(
  Trianglizer
  DESCRIPTION "Trianglizer is a special waveshaper that can transform sines into triangles."
  HOMEPAGE_URL "https://www.airwindows.com"
  LANGUAGES C CXX)
add_airwindows_plugin(${PROJECT_NAME} plugin.cpp miniaudio.h bit_vector.hpp)
