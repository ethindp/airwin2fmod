cmake_minimum_required(VERSION 3.14)

project(
  Isolator
  DESCRIPTION "Isolator is a steep highpass or lowpass filter, like you might find in a speaker crossover."
  HOMEPAGE_URL "https://www.airwindows.com"
  LANGUAGES C CXX)
add_airwindows_plugin(${PROJECT_NAME} plugin.cpp miniaudio.h bit_vector.hpp)
