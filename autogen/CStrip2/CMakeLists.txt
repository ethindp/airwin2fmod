cmake_minimum_required(VERSION 3.14)

project(
  CStrip2
  DESCRIPTION "CStrip2 refines and optimizes CStrip, by request!"
  HOMEPAGE_URL "https://www.airwindows.com"
  LANGUAGES C CXX)
add_airwindows_plugin(${PROJECT_NAME} plugin.cpp miniaudio.h bit_vector.hpp)
