cmake_minimum_required(VERSION 3.14)

project(
  Capacitor2
  DESCRIPTION "Capacitor2 is Capacitor with extra analog modeling and mojo."
  HOMEPAGE_URL "https://www.airwindows.com"
  LANGUAGES C CXX)
add_airwindows_plugin(${PROJECT_NAME} plugin.cpp miniaudio.h bit_vector.hpp)
