cmake_minimum_required(VERSION 3.14)

project(
  MatrixVerb
  DESCRIPTION "MatrixVerb is a wildly adjustable, strangely colorful reverb for deep and flexible spaces."
  HOMEPAGE_URL "https://www.airwindows.com"
  LANGUAGES C CXX)
add_airwindows_plugin(${PROJECT_NAME} plugin.cpp miniaudio.h bit_vector.hpp)
