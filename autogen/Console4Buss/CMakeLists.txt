cmake_minimum_required(VERSION 3.14)

project(
  Console4Buss
  DESCRIPTION "Console4Buss is the original Airwindows ITB mixing system, a two-plugin mix buss replacement for DAWs."
  HOMEPAGE_URL "https://www.airwindows.com"
  LANGUAGES C CXX)
add_airwindows_plugin(${PROJECT_NAME} plugin.cpp miniaudio.h bit_vector.hpp)
