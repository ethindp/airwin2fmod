cmake_minimum_required(VERSION 3.14)

project(
  Capacitor
  DESCRIPTION "Capacitor is a lowpass/highpass filter of a new type."
  HOMEPAGE_URL "https://www.airwindows.com"
  LANGUAGES C CXX)
add_airwindows_plugin(${PROJECT_NAME} plugin.cpp miniaudio.h bit_vector.hpp)
