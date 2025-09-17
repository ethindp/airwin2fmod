cmake_minimum_required(VERSION 3.14)

project(
  CrunchyGrooveWear
  DESCRIPTION "CrunchyGrooveWear is a version of GrooveWear for more edge and distortion."
  HOMEPAGE_URL "https://www.airwindows.com"
  LANGUAGES C CXX)
add_airwindows_plugin(${PROJECT_NAME} plugin.cpp miniaudio.h bit_vector.hpp)
