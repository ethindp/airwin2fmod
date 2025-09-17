cmake_minimum_required(VERSION 3.14)

project(
  MV
  DESCRIPTION "MV is a dual-mono reverb based on BitShiftGain and the old Midiverbs."
  HOMEPAGE_URL "https://www.airwindows.com"
  LANGUAGES C CXX)
add_airwindows_plugin(${PROJECT_NAME} plugin.cpp miniaudio.h bit_vector.hpp)
