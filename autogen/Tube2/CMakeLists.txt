cmake_minimum_required(VERSION 3.14)

project(
  Tube2
  DESCRIPTION "Tube2 extends Tube, with more sophisticated processing and input trim."
  HOMEPAGE_URL "https://www.airwindows.com"
  LANGUAGES C CXX)
add_airwindows_plugin(${PROJECT_NAME} plugin.cpp miniaudio.h bit_vector.hpp)
