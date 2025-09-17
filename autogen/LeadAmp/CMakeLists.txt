cmake_minimum_required(VERSION 3.14)

project(
  LeadAmp
  DESCRIPTION "LeadAmp is an amp sim with a clear, penetrating, vocal tone."
  HOMEPAGE_URL "https://www.airwindows.com"
  LANGUAGES C CXX)
add_airwindows_plugin(${PROJECT_NAME} plugin.cpp miniaudio.h bit_vector.hpp)
