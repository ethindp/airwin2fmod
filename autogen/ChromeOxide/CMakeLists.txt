cmake_minimum_required(VERSION 3.14)

project(
  ChromeOxide
  DESCRIPTION "ChromeOxide is an alternate path to vibey old tape sonics."
  HOMEPAGE_URL "https://www.airwindows.com"
  LANGUAGES C CXX)
add_airwindows_plugin(${PROJECT_NAME} plugin.cpp miniaudio.h bit_vector.hpp)
