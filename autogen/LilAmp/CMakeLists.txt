cmake_minimum_required(VERSION 3.14)

project(
  LilAmp
  DESCRIPTION "LilAmp is a tiny amp sim, like a little bitty practice amp without that much gain."
  HOMEPAGE_URL "https://www.airwindows.com"
  LANGUAGES C CXX)
add_airwindows_plugin(${PROJECT_NAME} plugin.cpp miniaudio.h bit_vector.hpp)
