cmake_minimum_required(VERSION 3.14)

project(
  PDChannel
  DESCRIPTION "PDChannel is Console5 and PurestDrive, sittin’ in a tree… (i.e. both at once, on channels and buss)"
  HOMEPAGE_URL "https://www.airwindows.com"
  LANGUAGES C CXX)
add_airwindows_plugin(${PROJECT_NAME} plugin.cpp miniaudio.h bit_vector.hpp)
