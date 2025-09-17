cmake_minimum_required(VERSION 3.14)

project(
  Dark
  DESCRIPTION "Dark is a wordlength reducer that gives your music a blacker backdrop."
  HOMEPAGE_URL "https://www.airwindows.com"
  LANGUAGES C CXX)
add_airwindows_plugin(${PROJECT_NAME} plugin.cpp miniaudio.h bit_vector.hpp)
