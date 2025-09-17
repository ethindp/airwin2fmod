cmake_minimum_required(VERSION 3.14)

project(
  BrightAmbience3
  DESCRIPTION "BrightAmbience3 adds undersampling for high sample rates, and better feedback."
  HOMEPAGE_URL "https://www.airwindows.com"
  LANGUAGES C CXX)
add_airwindows_plugin(${PROJECT_NAME} plugin.cpp miniaudio.h bit_vector.hpp)
