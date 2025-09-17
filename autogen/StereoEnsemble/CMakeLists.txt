cmake_minimum_required(VERSION 3.14)

project(
  StereoEnsemble
  DESCRIPTION "StereoEnsemble is a sort of hyperchorus blast from the past."
  HOMEPAGE_URL "https://www.airwindows.com"
  LANGUAGES C CXX)
add_airwindows_plugin(${PROJECT_NAME} plugin.cpp miniaudio.h bit_vector.hpp)
