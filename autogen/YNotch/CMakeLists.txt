cmake_minimum_required(VERSION 3.14)

project(
  YNotch
  DESCRIPTION "YNotch is soft and smooth to nasty, edgy texture-varying filtering."
  HOMEPAGE_URL "https://www.airwindows.com"
  LANGUAGES C CXX)
add_airwindows_plugin(${PROJECT_NAME} plugin.cpp miniaudio.h bit_vector.hpp)
