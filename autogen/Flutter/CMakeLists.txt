cmake_minimum_required(VERSION 3.14)

project(
  Flutter
  DESCRIPTION "Flutter is the flutter from ToTape6, standalone."
  HOMEPAGE_URL "https://www.airwindows.com"
  LANGUAGES C CXX)
add_airwindows_plugin(${PROJECT_NAME} plugin.cpp miniaudio.h bit_vector.hpp)
