cmake_minimum_required(VERSION 3.14)

project(
  TPDFWide
  DESCRIPTION "TPDFWide is still TPDF dither but better and wider. With 16/24 bit output and a DeRez control."
  HOMEPAGE_URL "https://www.airwindows.com"
  LANGUAGES C CXX)
add_airwindows_plugin(${PROJECT_NAME} plugin.cpp miniaudio.h bit_vector.hpp)
