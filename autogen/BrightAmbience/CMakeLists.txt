cmake_minimum_required(VERSION 3.14)

project(
  BrightAmbience
  DESCRIPTION "BrightAmbience is a plugin for very bright gated reverbs."
  HOMEPAGE_URL "https://www.airwindows.com"
  LANGUAGES C CXX)
add_airwindows_plugin(${PROJECT_NAME} plugin.cpp miniaudio.h bit_vector.hpp)
