cmake_minimum_required(VERSION 3.14)

project(
  Verbity2
  DESCRIPTION "Verbity2 adds stereo crossmodulation and expands Verbity's feedforward reverb topology."
  HOMEPAGE_URL "https://www.airwindows.com"
  LANGUAGES C CXX)
add_airwindows_plugin(${PROJECT_NAME} plugin.cpp miniaudio.h bit_vector.hpp)
