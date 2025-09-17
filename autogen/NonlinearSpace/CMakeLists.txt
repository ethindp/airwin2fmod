cmake_minimum_required(VERSION 3.14)

project(
  NonlinearSpace
  DESCRIPTION "NonlinearSpace is a flexible reverb plugin."
  HOMEPAGE_URL "https://www.airwindows.com"
  LANGUAGES C CXX)
add_airwindows_plugin(${PROJECT_NAME} plugin.cpp miniaudio.h bit_vector.hpp)
