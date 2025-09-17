cmake_minimum_required(VERSION 3.14)

project(
  FireAmp
  DESCRIPTION "FireAmp is a bright, loud, tubey amp sim for leads and dirt guitar."
  HOMEPAGE_URL "https://www.airwindows.com"
  LANGUAGES C CXX)
add_airwindows_plugin(${PROJECT_NAME} plugin.cpp miniaudio.h bit_vector.hpp)
