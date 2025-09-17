cmake_minimum_required(VERSION 3.14)

project(
  MultiBandDistortion
  DESCRIPTION "MultiBandDistortion is an old weird gnarly sound wrecker :)"
  HOMEPAGE_URL "https://www.airwindows.com"
  LANGUAGES C CXX)
add_airwindows_plugin(${PROJECT_NAME} plugin.cpp miniaudio.h bit_vector.hpp)
