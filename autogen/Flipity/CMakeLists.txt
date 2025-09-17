cmake_minimum_required(VERSION 3.14)

project(
  Flipity
  DESCRIPTION "Flipity is a channel phase flipper/swapper utility."
  HOMEPAGE_URL "https://www.airwindows.com"
  LANGUAGES C CXX)
add_airwindows_plugin(${PROJECT_NAME} plugin.cpp miniaudio.h bit_vector.hpp)
