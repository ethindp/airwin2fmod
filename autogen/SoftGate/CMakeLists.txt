cmake_minimum_required(VERSION 3.14)

project(
  SoftGate
  DESCRIPTION "SoftGate is a gate that can mute hiss and smooth sample tails."
  HOMEPAGE_URL "https://www.airwindows.com"
  LANGUAGES C CXX)
add_airwindows_plugin(${PROJECT_NAME} plugin.cpp miniaudio.h bit_vector.hpp)
