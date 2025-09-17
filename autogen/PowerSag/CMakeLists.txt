cmake_minimum_required(VERSION 3.14)

project(
  PowerSag
  DESCRIPTION "PowerSag is for emulating power supply limitations in analog modeling."
  HOMEPAGE_URL "https://www.airwindows.com"
  LANGUAGES C CXX)
add_airwindows_plugin(${PROJECT_NAME} plugin.cpp miniaudio.h bit_vector.hpp)
