cmake_minimum_required(VERSION 3.14)

project(
  BiquadHiLo
  DESCRIPTION "BiquadHiLo is the highpass and lowpass filter in ConsoleX."
  HOMEPAGE_URL "https://www.airwindows.com"
  LANGUAGES C CXX)
add_airwindows_plugin(${PROJECT_NAME} plugin.cpp miniaudio.h bit_vector.hpp)
