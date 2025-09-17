cmake_minimum_required(VERSION 3.14)

project(
  Mastering
  DESCRIPTION "Mastering is Airwindows style, and can do things nothing else can!"
  HOMEPAGE_URL "https://www.airwindows.com"
  LANGUAGES C CXX)
add_airwindows_plugin(${PROJECT_NAME} plugin.cpp miniaudio.h bit_vector.hpp)
