cmake_minimum_required(VERSION 3.14)

project(
  Chamber
  DESCRIPTION "Chamber is a feedforward reverb based on the golden ratio."
  HOMEPAGE_URL "https://www.airwindows.com"
  LANGUAGES C CXX)
add_airwindows_plugin(${PROJECT_NAME} plugin.cpp miniaudio.h bit_vector.hpp)
