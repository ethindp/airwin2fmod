cmake_minimum_required(VERSION 3.14)

project(
  Zoom
  DESCRIPTION "Zoom is a bank of Density-like waveshapers for subtly modulating peak energy."
  HOMEPAGE_URL "https://www.airwindows.com"
  LANGUAGES C CXX)
add_airwindows_plugin(${PROJECT_NAME} plugin.cpp miniaudio.h bit_vector.hpp)
