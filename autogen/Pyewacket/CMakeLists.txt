cmake_minimum_required(VERSION 3.14)

project(
  Pyewacket
  DESCRIPTION "Pyewacket is an old school compressor for high definition transients. Adds no fatness, just energy."
  HOMEPAGE_URL "https://www.airwindows.com"
  LANGUAGES C CXX)
add_airwindows_plugin(${PROJECT_NAME} plugin.cpp miniaudio.h bit_vector.hpp)
