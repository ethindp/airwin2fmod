cmake_minimum_required(VERSION 3.14)

project(
  Reverb
  DESCRIPTION "Reverb is simplified and tuned MatrixVerb, adjusting everything for each optimum verb size."
  HOMEPAGE_URL "https://www.airwindows.com"
  LANGUAGES C CXX)
add_airwindows_plugin(${PROJECT_NAME} plugin.cpp miniaudio.h bit_vector.hpp)
