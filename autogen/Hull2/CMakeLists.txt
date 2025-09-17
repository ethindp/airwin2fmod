cmake_minimum_required(VERSION 3.14)

project(
  Hull2
  DESCRIPTION "Hull2 is a very clear three-band EQ."
  HOMEPAGE_URL "https://www.airwindows.com"
  LANGUAGES C CXX)
add_airwindows_plugin(${PROJECT_NAME} plugin.cpp miniaudio.h bit_vector.hpp)
