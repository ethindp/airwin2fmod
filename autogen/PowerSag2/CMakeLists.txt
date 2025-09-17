cmake_minimum_required(VERSION 3.14)

project(
  PowerSag2
  DESCRIPTION "PowerSag2 is my improved circuit-starve plugin, now with inverse effect!"
  HOMEPAGE_URL "https://www.airwindows.com"
  LANGUAGES C CXX)
add_airwindows_plugin(${PROJECT_NAME} plugin.cpp miniaudio.h bit_vector.hpp)
