cmake_minimum_required(VERSION 3.14)

project(
  BrightAmbience2
  DESCRIPTION "BrightAmbience2 is more BrightAmbience with better tone and more slapbacky effects."
  HOMEPAGE_URL "https://www.airwindows.com"
  LANGUAGES C CXX)
add_airwindows_plugin(${PROJECT_NAME} plugin.cpp miniaudio.h bit_vector.hpp)
