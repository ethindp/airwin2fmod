cmake_minimum_required(VERSION 3.14)

project(
  PurestGain
  DESCRIPTION "PurestGain is a high-res noise shaped gain, with smoothed fader."
  HOMEPAGE_URL "https://www.airwindows.com"
  LANGUAGES C CXX)
add_airwindows_plugin(${PROJECT_NAME} plugin.cpp miniaudio.h bit_vector.hpp)
