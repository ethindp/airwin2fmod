cmake_minimum_required(VERSION 3.14)

project(
  PurestWarm2
  DESCRIPTION "PurestWarm2 adds dual dry/wet controls for each side of the waveform."
  HOMEPAGE_URL "https://www.airwindows.com"
  LANGUAGES C CXX)
add_airwindows_plugin(${PROJECT_NAME} plugin.cpp miniaudio.h bit_vector.hpp)
