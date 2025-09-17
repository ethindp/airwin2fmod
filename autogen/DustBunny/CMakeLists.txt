cmake_minimum_required(VERSION 3.14)

project(
  DustBunny
  DESCRIPTION "DustBunny is unpredictable distorty noise, like dust wedged under your turntable needle."
  HOMEPAGE_URL "https://www.airwindows.com"
  LANGUAGES C CXX)
add_airwindows_plugin(${PROJECT_NAME} plugin.cpp miniaudio.h bit_vector.hpp)
