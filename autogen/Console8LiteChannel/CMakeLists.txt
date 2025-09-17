cmake_minimum_required(VERSION 3.14)

project(
  Console8LiteChannel
  DESCRIPTION "Console8LiteChannel is simplified Console8, working with just a single mix buss."
  HOMEPAGE_URL "https://www.airwindows.com"
  LANGUAGES C CXX)
add_airwindows_plugin(${PROJECT_NAME} plugin.cpp miniaudio.h bit_vector.hpp)
