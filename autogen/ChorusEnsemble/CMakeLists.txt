cmake_minimum_required(VERSION 3.14)

project(
  ChorusEnsemble
  DESCRIPTION "ChorusEnsemble is a more complex, multi-tap mono chorus."
  HOMEPAGE_URL "https://www.airwindows.com"
  LANGUAGES C CXX)
add_airwindows_plugin(${PROJECT_NAME} plugin.cpp miniaudio.h bit_vector.hpp)
