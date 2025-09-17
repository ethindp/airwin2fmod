cmake_minimum_required(VERSION 3.14)

project(
  Monitoring2
  DESCRIPTION "Monitoring2 is Monitoring, but with Dark as the wordlength reducer."
  HOMEPAGE_URL "https://www.airwindows.com"
  LANGUAGES C CXX)
add_airwindows_plugin(${PROJECT_NAME} plugin.cpp miniaudio.h bit_vector.hpp)
