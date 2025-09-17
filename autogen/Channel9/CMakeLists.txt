cmake_minimum_required(VERSION 3.14)

project(
  Channel9
  DESCRIPTION "Channel9 is Channel8 with ultrasonic filtering, and new Teac and Mackie 'low end' settings."
  HOMEPAGE_URL "https://www.airwindows.com"
  LANGUAGES C CXX)
add_airwindows_plugin(${PROJECT_NAME} plugin.cpp miniaudio.h bit_vector.hpp)
