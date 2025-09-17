cmake_minimum_required(VERSION 3.14)

project(
  XBandpass
  DESCRIPTION "XBandpass is a distorted digital EQ, inspired by retro sampler DSP."
  HOMEPAGE_URL "https://www.airwindows.com"
  LANGUAGES C CXX)
add_airwindows_plugin(${PROJECT_NAME} plugin.cpp miniaudio.h bit_vector.hpp)
