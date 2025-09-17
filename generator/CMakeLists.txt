cmake_minimum_required(VERSION 3.14)

include(CheckCCompilerFlag)
include(CheckCXXCompilerFlag)
include(CheckLinkerFlag)
include(CheckIPOSupported)
include(CheckCSourceCompiles)
include(CheckCXXSourceCompiles)
list(APPEND CMAKE_MODULE_PATH "${CMAKE_SOURCE_DIR}/cmake")
include(harden-target)

project(
  airwin2fmod-generator
  VERSION 0.1.0
  DESCRIPTION "Generates FMOD plug-ins for Airwindows DSPs"
  HOMEPAGE_URL "https://github.com/ethindp/airwin2fmod"
  LANGUAGES C CXX)
set(CMAKE_EXPORT_COMPILE_COMMANDS ON)

# ---- Declare executable ----
file(GLOB_RECURSE headers CONFIGURE_DEPENDS
     "${CMAKE_CURRENT_SOURCE_DIR}/src/*.h")
file(GLOB_RECURSE sources CONFIGURE_DEPENDS
     "${CMAKE_CURRENT_SOURCE_DIR}/src/*.cpp"
     "${CMAKE_CURRENT_SOURCE_DIR}/src/*.c")
if (CMAKE_BUILD_TYPE STREQUAL "Debug")
set(CMAKE_MSVC_RUNTIME_LIBRARY "MultiThreadedDebugDll")
else()
set(CMAKE_MSVC_RUNTIME_LIBRARY "MultiThreadedDll")
endif()
add_executable(${PROJECT_NAME} ${headers} ${sources})
if (CMAKE_BUILD_TYPE STREQUAL "Debug" AND NOT CMAKE_CXX_COMPILER_ID MATCHES "MSVC")
find_program(CLANG_TIDY_EXE NAMES "clang-tidy")
if(CLANG_TIDY_EXE)
set(CLANG_TIDY_COMMAND "${CLANG_TIDY_EXE}" "-checks=-*,bugprone-*,clang-*,concurrency-*,modernize-*,performance-*,-bugprone-narrowing-conversions")
    set_target_properties(${PROJECT_NAME} PROPERTIES CXX_CLANG_TIDY "${CLANG_TIDY_COMMAND}")
    set_source_files_properties(source/bin_tree.hpp source/dgen_impl.hpp source/dgen_impl.cpp source/heap.hpp source/rand.hpp source/simdutf.cpp source/simdutf.hpp source/sfx.h source/wy.hpp source/dylib.hpp PROPERTIES SKIP_LINTING ON)
    endif()
endif()
set_property(TARGET ${PROJECT_NAME} PROPERTY OUTPUT_NAME ${PROJECT_NAME})

target_compile_features(${PROJECT_NAME} PRIVATE cxx_std_20)
set(CMAKE_CXX_STANDARD 20)
set(CMAKE_CXX_STANDARD_REQUIRED ON)
set(CMAKE_C_STANDARD 17)
set(CMAKE_C_STANDARD_REQUIRED ON)
if(MSVC)
set_target_properties(${PROJECT_NAME} PROPERTIES LINK_FLAGS "/STACK:8388608")
endif()
# Dependencies
find_package(Threads REQUIRED)
add_subdirectory("${CMAKE_SOURCE_DIR}/external/airwin2rack" "${CMAKE_CURRENT_BINARY_DIR}/../external/airwin2rack-build")
target_link_libraries(${PROJECT_NAME} PRIVATE airwin-registry)
add_subdirectory("${CMAKE_SOURCE_DIR}/external/fmt" "${CMAKE_CURRENT_BINARY_DIR}/../external/fmt-build")
target_link_libraries(${PROJECT_NAME} PRIVATE fmt::fmt)
add_subdirectory("${CMAKE_SOURCE_DIR}/external/choc" "${CMAKE_CURRENT_BINARY_DIR}/../external/choc-build")
target_link_libraries(${PROJECT_NAME} PRIVATE choc::choc)
check_cxx_compiler_flag(/utf-8 MSVC_HAS_UTF8_OPTION)
check_cxx_compiler_flag(/bigobj MSVC_HAS_BIGOBJ)
if(MSVC_HAS_UTF8_OPTION)
  target_compile_options(${PROJECT_NAME} PUBLIC /utf-8)
endif()
if (MSVC_HAS_BIGOBJ)
  target_compile_options(${PROJECT_NAME} PUBLIC /bigobj)
endif()
if(WIN32 OR WINDOWS_STORE)
get_target_property(defs ${PROJECT_NAME} COMPILE_DEFINITIONS)
list(FIND defs "_HAS_EXCEPTIONS" ARE_EXCEPTIONS_ENABLED)
if (ARE_EXCEPTIONS_ENABLED EQUAL 0)
message(FATAL_ERROR "Exceptions are disabled!")
endif()
  target_compile_definitions(
    ${PROJECT_NAME} PUBLIC _CRT_SECURE_NO_WARNINGS _CRT_SECURE_CPP_OVERLOAD_STANDARD_NAMES=1
                       _CRT_SECURE_CPP_OVERLOAD_STANDARD_NAMES_COUNT=1)
endif()
target_compile_definitions(${PROJECT_NAME} PUBLIC NOMINMAX)
if(WIN32)
target_link_libraries(${PROJECT_NAME} PRIVATE onecore.lib)
endif()
check_ipo_supported()
set_property(TARGET ${PROJECT_NAME} PROPERTY INTERPROCEDURAL_OPTIMIZATION TRUE)
harden_target(${PROJECT_NAME})
