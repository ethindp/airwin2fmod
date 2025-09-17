cmake_minimum_required(VERSION 3.14)

project(
  Inflamer
  DESCRIPTION "Inflamer is an Airwindowsized take on the waveshapers in Oxford Inflator."
  HOMEPAGE_URL "https://www.airwindows.com"
  LANGUAGES C CXX)
add_airwindows_plugin(${PROJECT_NAME} plugin.cpp miniaudio.h bit_vector.hpp)
