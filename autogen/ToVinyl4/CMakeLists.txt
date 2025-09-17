cmake_minimum_required(VERSION 3.14)

project(
  ToVinyl4
  DESCRIPTION "ToVinyl4 is a vinyl-mastering simulator bringing several vinyl-type colors."
  HOMEPAGE_URL "https://www.airwindows.com"
  LANGUAGES C CXX)
add_airwindows_plugin(${PROJECT_NAME} plugin.cpp miniaudio.h bit_vector.hpp)
