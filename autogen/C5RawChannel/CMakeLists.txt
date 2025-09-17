cmake_minimum_required(VERSION 3.14)

project(
  C5RawChannel
  DESCRIPTION "C5RawChannel is the original Console5 algorithm, with optional very gentle DC suppression."
  HOMEPAGE_URL "https://www.airwindows.com"
  LANGUAGES C CXX)
add_airwindows_plugin(${PROJECT_NAME} plugin.cpp miniaudio.h bit_vector.hpp)
