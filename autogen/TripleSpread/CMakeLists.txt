cmake_minimum_required(VERSION 3.14)

project(
  TripleSpread
  DESCRIPTION "TripleSpread is a stereo tripler with extra wideness and GlitchShifter processing."
  HOMEPAGE_URL "https://www.airwindows.com"
  LANGUAGES C CXX)
add_airwindows_plugin(${PROJECT_NAME} plugin.cpp miniaudio.h bit_vector.hpp)
