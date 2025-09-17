cmake_minimum_required(VERSION 3.14)

project(
  Righteous4
  DESCRIPTION "Righteous4 is a final output stage for targeting dynamic range."
  HOMEPAGE_URL "https://www.airwindows.com"
  LANGUAGES C CXX)
add_airwindows_plugin(${PROJECT_NAME} plugin.cpp miniaudio.h bit_vector.hpp)
