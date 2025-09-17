cmake_minimum_required(VERSION 3.14)

project(
  uLawDecode
  DESCRIPTION "uLawDecode is a Console-like encode/decode pair, but much more extreme."
  HOMEPAGE_URL "https://www.airwindows.com"
  LANGUAGES C CXX)
add_airwindows_plugin(${PROJECT_NAME} plugin.cpp miniaudio.h bit_vector.hpp)
