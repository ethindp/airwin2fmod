cmake_minimum_required(VERSION 3.14)

project(
  GlitchShifter
  DESCRIPTION "GlitchShifter is a really gnarly, raw-sounding pitch shifter with a dose of insanity!"
  HOMEPAGE_URL "https://www.airwindows.com"
  LANGUAGES C CXX)
add_airwindows_plugin(${PROJECT_NAME} plugin.cpp miniaudio.h bit_vector.hpp)
