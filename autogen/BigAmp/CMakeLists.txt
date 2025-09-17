cmake_minimum_required(VERSION 3.14)

project(
  BigAmp
  DESCRIPTION "BigAmp is a very flexible amplike thing with a taste for the bizarre."
  HOMEPAGE_URL "https://www.airwindows.com"
  LANGUAGES C CXX)
add_airwindows_plugin(${PROJECT_NAME} plugin.cpp miniaudio.h bit_vector.hpp)
