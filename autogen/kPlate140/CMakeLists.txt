cmake_minimum_required(VERSION 3.14)

project(
  kPlate140
  DESCRIPTION "kPlate140 is a next-generation Airwindows plate reverb."
  HOMEPAGE_URL "https://www.airwindows.com"
  LANGUAGES C CXX)
add_airwindows_plugin(${PROJECT_NAME} plugin.cpp miniaudio.h bit_vector.hpp)
