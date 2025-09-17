cmake_minimum_required(VERSION 3.14)

project(
  ConsoleMDChannel
  DESCRIPTION "ConsoleMDChannel goes for the tone shaping of the classic MCI console!"
  HOMEPAGE_URL "https://www.airwindows.com"
  LANGUAGES C CXX)
add_airwindows_plugin(${PROJECT_NAME} plugin.cpp miniaudio.h bit_vector.hpp)
