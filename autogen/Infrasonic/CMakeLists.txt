cmake_minimum_required(VERSION 3.14)

project(
  Infrasonic
  DESCRIPTION "Infrasonic is a very steep subsonic filter, built like Ultrasonic."
  HOMEPAGE_URL "https://www.airwindows.com"
  LANGUAGES C CXX)
add_airwindows_plugin(${PROJECT_NAME} plugin.cpp miniaudio.h bit_vector.hpp)
