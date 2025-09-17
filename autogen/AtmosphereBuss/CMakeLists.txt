cmake_minimum_required(VERSION 3.14)

project(
  AtmosphereBuss
  DESCRIPTION "AtmosphereBuss is Console5 processing with powerful new acoustic distance effects."
  HOMEPAGE_URL "https://www.airwindows.com"
  LANGUAGES C CXX)
add_airwindows_plugin(${PROJECT_NAME} plugin.cpp miniaudio.h bit_vector.hpp)
