cmake_minimum_required(VERSION 3.14)

project(
  MidAmp
  DESCRIPTION "MidAmp is a clean amp sim meant to work like a loud Twin or something of that nature."
  HOMEPAGE_URL "https://www.airwindows.com"
  LANGUAGES C CXX)
add_airwindows_plugin(${PROJECT_NAME} plugin.cpp miniaudio.h bit_vector.hpp)
