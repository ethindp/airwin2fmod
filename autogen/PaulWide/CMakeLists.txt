cmake_minimum_required(VERSION 3.14)

project(
  PaulWide
  DESCRIPTION "PaulWide is a highpassed TPDF wide dither. (quieter, airier AND wider)"
  HOMEPAGE_URL "https://www.airwindows.com"
  LANGUAGES C CXX)
add_airwindows_plugin(${PROJECT_NAME} plugin.cpp miniaudio.h bit_vector.hpp)
