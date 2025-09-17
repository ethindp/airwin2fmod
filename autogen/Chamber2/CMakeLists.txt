cmake_minimum_required(VERSION 3.14)

project(
  Chamber2
  DESCRIPTION "Chamber2 is a feedforward reverb, a blur delay, and a glitch topping!"
  HOMEPAGE_URL "https://www.airwindows.com"
  LANGUAGES C CXX)
add_airwindows_plugin(${PROJECT_NAME} plugin.cpp miniaudio.h bit_vector.hpp)
