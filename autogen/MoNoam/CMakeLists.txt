cmake_minimum_required(VERSION 3.14)

project(
  MoNoam
  DESCRIPTION "MoNoam gives you variations on mono, mid, and side in different channels."
  HOMEPAGE_URL "https://www.airwindows.com"
  LANGUAGES C CXX)
add_airwindows_plugin(${PROJECT_NAME} plugin.cpp miniaudio.h bit_vector.hpp)
