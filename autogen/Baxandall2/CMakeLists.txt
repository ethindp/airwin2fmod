cmake_minimum_required(VERSION 3.14)

project(
  Baxandall2
  DESCRIPTION "Baxandall2 is Baxandall, extended and made more powerful."
  HOMEPAGE_URL "https://www.airwindows.com"
  LANGUAGES C CXX)
add_airwindows_plugin(${PROJECT_NAME} plugin.cpp miniaudio.h bit_vector.hpp)
