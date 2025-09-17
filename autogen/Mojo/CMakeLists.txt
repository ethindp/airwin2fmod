cmake_minimum_required(VERSION 3.14)

project(
  Mojo
  DESCRIPTION "Mojo is a biggenator that also works as a loudenator."
  HOMEPAGE_URL "https://www.airwindows.com"
  LANGUAGES C CXX)
add_airwindows_plugin(${PROJECT_NAME} plugin.cpp miniaudio.h bit_vector.hpp)
