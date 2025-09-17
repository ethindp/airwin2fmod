cmake_minimum_required(VERSION 3.14)

project(
  UltrasonicLite
  DESCRIPTION "UltrasonicLite is just one stage of supersonic filter, for using inside digital mixes."
  HOMEPAGE_URL "https://www.airwindows.com"
  LANGUAGES C CXX)
add_airwindows_plugin(${PROJECT_NAME} plugin.cpp miniaudio.h bit_vector.hpp)
