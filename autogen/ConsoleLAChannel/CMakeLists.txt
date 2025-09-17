cmake_minimum_required(VERSION 3.14)

project(
  ConsoleLAChannel
  DESCRIPTION "ConsoleLAChannel is the Airwindows take on the Quad Eight console."
  HOMEPAGE_URL "https://www.airwindows.com"
  LANGUAGES C CXX)
add_airwindows_plugin(${PROJECT_NAME} plugin.cpp miniaudio.h bit_vector.hpp)
