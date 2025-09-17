cmake_minimum_required(VERSION 3.14)

project(
  IronOxideClassic2
  DESCRIPTION "IronOxideClassic2 is my bandpassy tape sim, updated for high sample rate and aliasing control."
  HOMEPAGE_URL "https://www.airwindows.com"
  LANGUAGES C CXX)
add_airwindows_plugin(${PROJECT_NAME} plugin.cpp miniaudio.h bit_vector.hpp)
