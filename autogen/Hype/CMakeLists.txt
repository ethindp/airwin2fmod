cmake_minimum_required(VERSION 3.14)

project(
  Hype
  DESCRIPTION "Hype is a treble softening experiment gone strangely awry :)"
  HOMEPAGE_URL "https://www.airwindows.com"
  LANGUAGES C CXX)
add_airwindows_plugin(${PROJECT_NAME} plugin.cpp miniaudio.h bit_vector.hpp)
