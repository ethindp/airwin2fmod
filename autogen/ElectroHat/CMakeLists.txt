cmake_minimum_required(VERSION 3.14)

project(
  ElectroHat
  DESCRIPTION "ElectroHat is a hi-hat tone generator that uses the original sound as a control voltage."
  HOMEPAGE_URL "https://www.airwindows.com"
  LANGUAGES C CXX)
add_airwindows_plugin(${PROJECT_NAME} plugin.cpp miniaudio.h bit_vector.hpp)
