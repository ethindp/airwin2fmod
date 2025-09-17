cmake_minimum_required(VERSION 3.14)

project(
  Monitoring
  DESCRIPTION "Monitoring is your one-stop shop for final 2-buss work!"
  HOMEPAGE_URL "https://www.airwindows.com"
  LANGUAGES C CXX)
add_airwindows_plugin(${PROJECT_NAME} plugin.cpp miniaudio.h bit_vector.hpp)
