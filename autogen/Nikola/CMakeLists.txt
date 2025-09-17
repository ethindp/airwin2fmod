cmake_minimum_required(VERSION 3.14)

project(
  Nikola
  DESCRIPTION "Nikola is an Audio Tesla Coil plugin! Note: audio tesla coils don't sound nice."
  HOMEPAGE_URL "https://www.airwindows.com"
  LANGUAGES C CXX)
add_airwindows_plugin(${PROJECT_NAME} plugin.cpp miniaudio.h bit_vector.hpp)
