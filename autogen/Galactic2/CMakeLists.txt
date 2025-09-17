cmake_minimum_required(VERSION 3.14)

project(
  Galactic2
  DESCRIPTION "Galactic2 is a super-reverb REdesigned specially for pads and space ambient."
  HOMEPAGE_URL "https://www.airwindows.com"
  LANGUAGES C CXX)
add_airwindows_plugin(${PROJECT_NAME} plugin.cpp miniaudio.h bit_vector.hpp)
