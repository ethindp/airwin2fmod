cmake_minimum_required(VERSION 3.14)

project(
  kCathedral3
  DESCRIPTION "kCathedral3 is a giant cathedral-like space using Bezier undersampling."
  HOMEPAGE_URL "https://www.airwindows.com"
  LANGUAGES C CXX)
add_airwindows_plugin(${PROJECT_NAME} plugin.cpp miniaudio.h bit_vector.hpp)
