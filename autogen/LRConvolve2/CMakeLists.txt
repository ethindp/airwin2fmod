cmake_minimum_required(VERSION 3.14)

project(
  LRConvolve2
  DESCRIPTION "LRConvolve2 multiplies each channel by the other, plus Soar!"
  HOMEPAGE_URL "https://www.airwindows.com"
  LANGUAGES C CXX)
add_airwindows_plugin(${PROJECT_NAME} plugin.cpp miniaudio.h bit_vector.hpp)
