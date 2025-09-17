cmake_minimum_required(VERSION 3.14)

project(
  GalacticVibe
  DESCRIPTION "GalacticVibe is the stereo vibrato from the original Galactic reverb."
  HOMEPAGE_URL "https://www.airwindows.com"
  LANGUAGES C CXX)
add_airwindows_plugin(${PROJECT_NAME} plugin.cpp miniaudio.h bit_vector.hpp)
