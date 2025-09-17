cmake_minimum_required(VERSION 3.14)

project(
  Srsly2
  DESCRIPTION "Srsly2 is a revisit of Srsly, to make the stereo widening more extreme."
  HOMEPAGE_URL "https://www.airwindows.com"
  LANGUAGES C CXX)
add_airwindows_plugin(${PROJECT_NAME} plugin.cpp miniaudio.h bit_vector.hpp)
