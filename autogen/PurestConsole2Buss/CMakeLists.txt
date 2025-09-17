cmake_minimum_required(VERSION 3.14)

project(
  PurestConsole2Buss
  DESCRIPTION "PurestConsole2Buss is the distributed filter version of PurestConsole."
  HOMEPAGE_URL "https://www.airwindows.com"
  LANGUAGES C CXX)
add_airwindows_plugin(${PROJECT_NAME} plugin.cpp miniaudio.h bit_vector.hpp)
