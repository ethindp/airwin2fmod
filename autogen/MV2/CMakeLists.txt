cmake_minimum_required(VERSION 3.14)

project(
  MV2
  DESCRIPTION "MV2 is a dual-mono reverb based on BitShiftGain and the old Midiverbs, adapted to high sample rates."
  HOMEPAGE_URL "https://www.airwindows.com"
  LANGUAGES C CXX)
add_airwindows_plugin(${PROJECT_NAME} plugin.cpp miniaudio.h bit_vector.hpp)
