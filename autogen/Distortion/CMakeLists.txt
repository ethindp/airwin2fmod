cmake_minimum_required(VERSION 3.14)

project(
  Distortion
  DESCRIPTION "Distortion is a slightly dark analog-style distortion with several presets, like Focus."
  HOMEPAGE_URL "https://www.airwindows.com"
  LANGUAGES C CXX)
add_airwindows_plugin(${PROJECT_NAME} plugin.cpp miniaudio.h bit_vector.hpp)
