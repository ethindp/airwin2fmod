cmake_minimum_required(VERSION 3.14)

project(
  StereoDoubler
  DESCRIPTION "StereoDoubler is like GlitchShifter optimized for pitch shift doubling and tripling."
  HOMEPAGE_URL "https://www.airwindows.com"
  LANGUAGES C CXX)
add_airwindows_plugin(${PROJECT_NAME} plugin.cpp miniaudio.h bit_vector.hpp)
