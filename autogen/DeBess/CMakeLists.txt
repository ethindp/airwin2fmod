cmake_minimum_required(VERSION 3.14)

project(
  DeBess
  DESCRIPTION "DeBess is an improved DeEss, with perfect rejection of non-ess audio."
  HOMEPAGE_URL "https://www.airwindows.com"
  LANGUAGES C CXX)
add_airwindows_plugin(${PROJECT_NAME} plugin.cpp miniaudio.h bit_vector.hpp)
