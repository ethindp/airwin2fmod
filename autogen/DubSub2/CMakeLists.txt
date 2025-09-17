cmake_minimum_required(VERSION 3.14)

project(
  DubSub2
  DESCRIPTION "DubSub2 is the essence of the Airwindows head bump."
  HOMEPAGE_URL "https://www.airwindows.com"
  LANGUAGES C CXX)
add_airwindows_plugin(${PROJECT_NAME} plugin.cpp miniaudio.h bit_vector.hpp)
