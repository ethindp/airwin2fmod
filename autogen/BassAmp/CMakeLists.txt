cmake_minimum_required(VERSION 3.14)

project(
  BassAmp
  DESCRIPTION "BassAmp is an old plugin with new tweaks, that gives some bass guitar tones."
  HOMEPAGE_URL "https://www.airwindows.com"
  LANGUAGES C CXX)
add_airwindows_plugin(${PROJECT_NAME} plugin.cpp miniaudio.h bit_vector.hpp)
