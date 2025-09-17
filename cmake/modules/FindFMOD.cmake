# FindFMOD.cmake Finds the FMOD audio engine library
#
# This module defines the following variables: FMOD_FOUND - True if FMOD was
# found FMOD_INCLUDE_DIRS - FMOD include directories FMOD_LIBRARIES - FMOD
# libraries to link against FMOD_VERSION - FMOD version
#
# and the following imported targets: FMOD::FMOD - The FMOD library

include(FindPackageHandleStandardArgs)

if(WIN32)
  if(CMAKE_SYSTEM_NAME STREQUAL "WindowsStore")
    set(FMOD_IS_UWP TRUE)
    cmake_host_system_information(
      RESULT FMOD_ROOT
      QUERY
        WINDOWS_REGISTRY
        "HKEY_LOCAL_MACHINE\\SOFTWARE\\WOW6432Node\\FMOD Studio API Universal Windows Platform"
        VALUE
        "install_dir"
        VIEW
        BOTH)
  else()
    set(FMOD_IS_UWP FALSE)
    cmake_host_system_information(
      RESULT FMOD_ROOT
      QUERY WINDOWS_REGISTRY
            "HKEY_LOCAL_MACHINE\\SOFTWARE\\WOW6432Node\\FMOD Studio API Windows"
            VALUE "install_dir" VIEW BOTH)
  endif()
else()
  if(NOT DEFINED FMOD_ROOT)
    message(
      FATAL_ERROR
        "FMOD_ROOT must be set on non-Windows platforms. Please set -DFMOD_ROOT=/path/to/fmod"
    )
  endif()
endif()

if(WIN32)
  if(FMOD_IS_UWP)
    if(CMAKE_SYSTEM_PROCESSOR MATCHES "ARM")
      set(FMOD_ARCH_PATH "arm")
    elseif(CMAKE_SIZEOF_VOID_P EQUAL 8)
      set(FMOD_ARCH_PATH "x64")
    else()
      set(FMOD_ARCH_PATH "x86")
    endif()
  else()
    if(CMAKE_SYSTEM_PROCESSOR MATCHES "ARM64")
      set(FMOD_ARCH_PATH "arm64")
    elseif(CMAKE_SIZEOF_VOID_P EQUAL 8)
      set(FMOD_ARCH_PATH "x64")
    else()
      set(FMOD_ARCH_PATH "x86")
    endif()
  endif()
elseif(APPLE)
  if(CMAKE_SYSTEM_NAME STREQUAL "iOS"
     OR CMAKE_SYSTEM_NAME STREQUAL "tvOS"
     OR CMAKE_SYSTEM_NAME STREQUAL "visionOS")
    set(FMOD_ARCH_PATH "")
    if(CMAKE_SYSTEM_NAME STREQUAL "tvOS")
      if(CMAKE_SYSTEM_PROCESSOR MATCHES "arm")
        set(FMOD_PLATFORM_SUFFIX "_appletvos")
      else()
        set(FMOD_PLATFORM_SUFFIX "_appletvsimulator")
      endif()
    elseif(CMAKE_SYSTEM_NAME STREQUAL "iOS")
      if(CMAKE_SYSTEM_PROCESSOR MATCHES "arm")
        set(FMOD_PLATFORM_SUFFIX "_iphoneos")
      else()
        set(FMOD_PLATFORM_SUFFIX "_iphonesimulator")
      endif()
    elseif(CMAKE_SYSTEM_NAME STREQUAL "visionOS")
      if(CMAKE_SYSTEM_PROCESSOR MATCHES "arm")
        set(FMOD_PLATFORM_SUFFIX "_xros")
      else()
        set(FMOD_PLATFORM_SUFFIX "_xrsimulator")
      endif()
    endif()
  else()
    set(FMOD_ARCH_PATH "")
    set(FMOD_PLATFORM_SUFFIX "")
  endif()
elseif(ANDROID)
  if(CMAKE_ANDROID_ARCH_ABI STREQUAL "arm64-v8a")
    set(FMOD_ARCH_PATH "arm64-v8a")
  elseif(CMAKE_ANDROID_ARCH_ABI STREQUAL "armeabi-v7a")
    set(FMOD_ARCH_PATH "armeabi-v7a")
  elseif(CMAKE_ANDROID_ARCH_ABI STREQUAL "x86_64")
    set(FMOD_ARCH_PATH "x86_64")
  elseif(CMAKE_ANDROID_ARCH_ABI STREQUAL "x86")
    set(FMOD_ARCH_PATH "x86")
  else()
    message(
      WARNING "Unsupported Android architecture: ${CMAKE_ANDROID_ARCH_ABI}")
  endif()
elseif(UNIX)
  if(CMAKE_SYSTEM_PROCESSOR MATCHES "aarch64")
    set(FMOD_ARCH_PATH "arm64")
  elseif(CMAKE_SYSTEM_PROCESSOR MATCHES "arm")
    set(FMOD_ARCH_PATH "arm")
  elseif(CMAKE_SIZEOF_VOID_P EQUAL 8)
    set(FMOD_ARCH_PATH "x86_64")
  else()
    set(FMOD_ARCH_PATH "x86")
  endif()
endif()

if(CMAKE_BUILD_TYPE MATCHES "Debug")
  set(FMOD_IS_DEBUG TRUE)
else()
  set(FMOD_IS_DEBUG FALSE)
endif()

if(FMOD_ROOT)
  set(FMOD_INCLUDE_DIR "${FMOD_ROOT}/api/core/inc")
  if(FMOD_ARCH_PATH)
    set(FMOD_LIBRARY_DIR "${FMOD_ROOT}/api/core/lib/${FMOD_ARCH_PATH}")
  else()
    set(FMOD_LIBRARY_DIR "${FMOD_ROOT}/api/core/lib")
  endif()
  if(WIN32)
    if(FMOD_IS_UWP)
      if(FMOD_IS_DEBUG)
        set(FMOD_LIB_NAME "fmodL")
      else()
        set(FMOD_LIB_NAME "fmod")
      endif()
    else()
      if(FMOD_IS_DEBUG)
        set(FMOD_LIB_NAME "fmodL_vc")
      else()
        set(FMOD_LIB_NAME "fmod_vc")
      endif()
    endif()
  elseif(APPLE)
    if(CMAKE_SYSTEM_NAME STREQUAL "iOS"
       OR CMAKE_SYSTEM_NAME STREQUAL "tvOS"
       OR CMAKE_SYSTEM_NAME STREQUAL "visionOS")
      if(FMOD_IS_DEBUG)
        set(FMOD_LIB_NAME "libfmodL${FMOD_PLATFORM_SUFFIX}")
      else()
        set(FMOD_LIB_NAME "libfmod${FMOD_PLATFORM_SUFFIX}")
      endif()
    else()
      if(FMOD_IS_DEBUG)
        set(FMOD_LIB_NAME "libfmodL")
      else()
        set(FMOD_LIB_NAME "libfmod")
      endif()
    endif()
  else()
    if(FMOD_IS_DEBUG)
      set(FMOD_LIB_NAME "libfmodL")
    else()
      set(FMOD_LIB_NAME "libfmod")
    endif()
  endif()
  message(STATUS "FMOD library path: ${FMOD_LIBRARY_DIR}")
  find_library(
    FMOD_LIBRARY
    NAMES ${FMOD_LIB_NAME}
    PATHS ${FMOD_LIBRARY_DIR}
    NO_DEFAULT_PATH REQUIRED)

  # Try to extract version information
  if(EXISTS "${FMOD_INCLUDE_DIR}/fmod.h")
    file(STRINGS "${FMOD_INCLUDE_DIR}/fmod.h" FMOD_VERSION_MAJOR_LINE
         REGEX "^#define[ \t]+FMOD_VERSION_MAJOR[ \t]+[0-9]+$")
    file(STRINGS "${FMOD_INCLUDE_DIR}/fmod.h" FMOD_VERSION_MINOR_LINE
         REGEX "^#define[ \t]+FMOD_VERSION_MINOR[ \t]+[0-9]+$")
    file(STRINGS "${FMOD_INCLUDE_DIR}/fmod.h" FMOD_VERSION_PATCH_LINE
         REGEX "^#define[ \t]+FMOD_VERSION_PATCH[ \t]+[0-9]+$")

    string(REGEX REPLACE "^#define[ \t]+FMOD_VERSION_MAJOR[ \t]+([0-9]+)$"
                         "\\1" FMOD_VERSION_MAJOR "${FMOD_VERSION_MAJOR_LINE}")
    string(REGEX REPLACE "^#define[ \t]+FMOD_VERSION_MINOR[ \t]+([0-9]+)$"
                         "\\1" FMOD_VERSION_MINOR "${FMOD_VERSION_MINOR_LINE}")
    string(REGEX REPLACE "^#define[ \t]+FMOD_VERSION_PATCH[ \t]+([0-9]+)$"
                         "\\1" FMOD_VERSION_PATCH "${FMOD_VERSION_PATCH_LINE}")

    if(FMOD_VERSION_MAJOR
       AND FMOD_VERSION_MINOR
       AND FMOD_VERSION_PATCH)
      set(FMOD_VERSION
          "${FMOD_VERSION_MAJOR}.${FMOD_VERSION_MINOR}.${FMOD_VERSION_PATCH}")
    endif()
  endif()
endif()

# Set the final variables
set(FMOD_INCLUDE_DIRS ${FMOD_INCLUDE_DIR})
set(FMOD_LIBRARIES ${FMOD_LIBRARY})

# Standard find package handling
find_package_handle_standard_args(
  FMOD
  REQUIRED_VARS FMOD_LIBRARY FMOD_INCLUDE_DIR
  VERSION_VAR FMOD_VERSION)

# Mark variables as advanced
mark_as_advanced(FMOD_INCLUDE_DIR FMOD_LIBRARY)

# Create imported target with automatic runtime copying
if(FMOD_FOUND AND NOT TARGET FMOD::FMOD)
  # Determine runtime library location
  if(WIN32)
    # Windows: DLL for runtime, LIB for linking
    if(FMOD_IS_DEBUG)
      set(FMOD_DLL_NAME "fmodL.dll")
    else()
      set(FMOD_DLL_NAME "fmod.dll")
    endif()
    set(FMOD_RUNTIME_LIBRARY "${FMOD_LIBRARY_DIR}/${FMOD_DLL_NAME}")
    
    # Create imported target as SHARED library
    add_library(FMOD::FMOD SHARED IMPORTED)
    set_target_properties(FMOD::FMOD PROPERTIES
      IMPORTED_IMPLIB "${FMOD_LIBRARY}"
      IMPORTED_LOCATION "${FMOD_RUNTIME_LIBRARY}"
      INTERFACE_INCLUDE_DIRECTORIES "${FMOD_INCLUDE_DIRS}"
    )
    
    # For multi-configuration generators, set up both Debug and Release
    if(CMAKE_CONFIGURATION_TYPES)
      foreach(CONFIG ${CMAKE_CONFIGURATION_TYPES})
        string(TOUPPER ${CONFIG} CONFIG_UPPER)
        if(${CONFIG} MATCHES "Debug")
          set(CONFIG_DLL_NAME "fmodL.dll")
          set(CONFIG_LIB_NAME "fmodL_vc.lib")
        else()
          set(CONFIG_DLL_NAME "fmod.dll")
          set(CONFIG_LIB_NAME "fmod_vc.lib")
        endif()
        set_target_properties(FMOD::FMOD PROPERTIES
          IMPORTED_IMPLIB_${CONFIG_UPPER} "${FMOD_LIBRARY_DIR}/${CONFIG_LIB_NAME}"
          IMPORTED_LOCATION_${CONFIG_UPPER} "${FMOD_LIBRARY_DIR}/${CONFIG_DLL_NAME}"
        )
      endforeach()
    endif()
    
  elseif(APPLE)
    if(CMAKE_SYSTEM_NAME STREQUAL "iOS" 
       OR CMAKE_SYSTEM_NAME STREQUAL "tvOS" 
       OR CMAKE_SYSTEM_NAME STREQUAL "visionOS")
      # iOS/tvOS/visionOS use static libraries
      add_library(FMOD::FMOD STATIC IMPORTED)
      set_target_properties(FMOD::FMOD PROPERTIES
        IMPORTED_LOCATION "${FMOD_LIBRARY}"
        INTERFACE_INCLUDE_DIRECTORIES "${FMOD_INCLUDE_DIRS}"
      )
    else()
      # macOS uses dylib
      if(FMOD_IS_DEBUG)
        set(FMOD_DYLIB_NAME "libfmodL.dylib")
      else()
        set(FMOD_DYLIB_NAME "libfmod.dylib")
      endif()
      set(FMOD_RUNTIME_LIBRARY "${FMOD_LIBRARY_DIR}/${FMOD_DYLIB_NAME}")
      
      add_library(FMOD::FMOD SHARED IMPORTED)
      set_target_properties(FMOD::FMOD PROPERTIES
        IMPORTED_LOCATION "${FMOD_RUNTIME_LIBRARY}"
        INTERFACE_INCLUDE_DIRECTORIES "${FMOD_INCLUDE_DIRS}"
      )
    endif()
    
  elseif(UNIX)
    # Linux/Android use .so files
    if(FMOD_IS_DEBUG)
      file(GLOB FMOD_SO_FILES "${FMOD_LIBRARY_DIR}/libfmodL.so*")
    else()
      file(GLOB FMOD_SO_FILES "${FMOD_LIBRARY_DIR}/libfmod.so*")
    endif()
    
    # Find the actual .so file (not symlink)
    foreach(so_file ${FMOD_SO_FILES})
      if(NOT IS_SYMLINK ${so_file})
        set(FMOD_RUNTIME_LIBRARY ${so_file})
        break()
      endif()
    endforeach()
    
    # If all are symlinks, use the first one
    if(NOT FMOD_RUNTIME_LIBRARY AND FMOD_SO_FILES)
      list(GET FMOD_SO_FILES 0 FMOD_RUNTIME_LIBRARY)
    endif()
    
    add_library(FMOD::FMOD SHARED IMPORTED)
    set_target_properties(FMOD::FMOD PROPERTIES
      IMPORTED_LOCATION "${FMOD_RUNTIME_LIBRARY}"
      IMPORTED_SONAME "${FMOD_LIB_NAME}"
      INTERFACE_INCLUDE_DIRECTORIES "${FMOD_INCLUDE_DIRS}"
    )
  else()
    # Fallback for unknown platforms
    add_library(FMOD::FMOD UNKNOWN IMPORTED)
    set_target_properties(FMOD::FMOD PROPERTIES
      IMPORTED_LOCATION "${FMOD_LIBRARY}"
      INTERFACE_INCLUDE_DIRECTORIES "${FMOD_INCLUDE_DIRS}"
    )
  endif()

  # Automatic runtime dependency copying
  if(WIN32 OR (APPLE AND NOT (CMAKE_SYSTEM_NAME STREQUAL "iOS" 
                            OR CMAKE_SYSTEM_NAME STREQUAL "tvOS" 
                            OR CMAKE_SYSTEM_NAME STREQUAL "visionOS")))
    # Create a custom target that handles copying for all dependents
    if(NOT TARGET FMOD_Runtime_Copy)
      add_custom_target(FMOD_Runtime_Copy ALL)
    endif()
    
    # Add an interface library that will trigger the copy
    add_library(FMOD::FMOD_Runtime INTERFACE IMPORTED)
    
    # Use generator expressions to copy at build time
    if(WIN32)
      # For Windows, we need to handle both single and multi-config generators
      if(CMAKE_CONFIGURATION_TYPES)
        # Multi-config (Visual Studio, Xcode on Windows)
        set_target_properties(FMOD::FMOD_Runtime PROPERTIES
          INTERFACE_LINK_LIBRARIES 
            "$<TARGET_GENEX_EVAL:FMOD::FMOD,$<TARGET_PROPERTY:FMOD::FMOD,IMPORTED_IMPLIB>>"
        )
        
        # Add a build event to copy the DLL
        set(COPY_COMMAND 
          "$<$<CONFIG:Debug>:${CMAKE_COMMAND} -E copy_if_different \"${FMOD_LIBRARY_DIR}/fmodL.dll\" \"$<TARGET_FILE_DIR:$<TARGET_PROPERTY:NAME>>\">"
          "$<$<NOT:$<CONFIG:Debug>>:${CMAKE_COMMAND} -E copy_if_different \"${FMOD_LIBRARY_DIR}/fmod.dll\" \"$<TARGET_FILE_DIR:$<TARGET_PROPERTY:NAME>>\">"
        )
      else()
        # Single-config (Makefiles, Ninja)
        file(COPY "${FMOD_RUNTIME_LIBRARY}" 
             DESTINATION "${CMAKE_CURRENT_BINARY_DIR}")
      endif()
    elseif(APPLE)
      # macOS dylib copying
      file(COPY "${FMOD_RUNTIME_LIBRARY}" 
           DESTINATION "${CMAKE_CURRENT_BINARY_DIR}")
    endif()
    
    # Link the runtime interface to the main target
    set_property(TARGET FMOD::FMOD APPEND PROPERTY
      INTERFACE_LINK_LIBRARIES FMOD::FMOD_Runtime
    )
  endif()

  # For Linux, set RPATH handling
  if(UNIX AND NOT APPLE)
    set_target_properties(FMOD::FMOD PROPERTIES
      INTERFACE_LINK_DIRECTORIES "${FMOD_LIBRARY_DIR}"
    )
    # Suggest RPATH settings to users
    set(FMOD_SUGGESTED_RPATH "${FMOD_LIBRARY_DIR}" CACHE STRING 
        "Suggested RPATH for FMOD library")
    mark_as_advanced(FMOD_SUGGESTED_RPATH)
  endif()

  # Export a helper function for manual control if needed
  function(fmod_copy_binaries target)
    if(TARGET ${target})
      get_target_property(target_type ${target} TYPE)
      if(target_type STREQUAL "EXECUTABLE")
        if(WIN32)
          # Copy DLL to target directory
          if(CMAKE_CONFIGURATION_TYPES)
            # Multi-config generators
            foreach(CONFIG ${CMAKE_CONFIGURATION_TYPES})
              if(${CONFIG} MATCHES "Debug")
                set(DLL_NAME "fmodL.dll")
              else()
                set(DLL_NAME "fmod.dll")
              endif()
              add_custom_command(TARGET ${target} POST_BUILD
                COMMAND ${CMAKE_COMMAND} -E copy_if_different
                "${FMOD_LIBRARY_DIR}/${DLL_NAME}"
                "$<TARGET_FILE_DIR:${target}>"
                COMMENT "Copying FMOD runtime for ${CONFIG}"
              )
            endforeach()
          else()
            # Single config generators
            add_custom_command(TARGET ${target} POST_BUILD
              COMMAND ${CMAKE_COMMAND} -E copy_if_different
              "${FMOD_RUNTIME_LIBRARY}"
              "$<TARGET_FILE_DIR:${target}>"
              COMMENT "Copying FMOD runtime library"
            )
          endif()
        elseif(APPLE AND NOT (CMAKE_SYSTEM_NAME STREQUAL "iOS" 
                            OR CMAKE_SYSTEM_NAME STREQUAL "tvOS" 
                            OR CMAKE_SYSTEM_NAME STREQUAL "visionOS"))
          # Copy dylib for macOS
          add_custom_command(TARGET ${target} POST_BUILD
            COMMAND ${CMAKE_COMMAND} -E copy_if_different
            "${FMOD_RUNTIME_LIBRARY}"
            "$<TARGET_FILE_DIR:${target}>"
            COMMENT "Copying FMOD runtime library"
          )
        elseif(UNIX)
          # For Linux, copy the .so and create symlinks
          get_filename_component(RUNTIME_NAME ${FMOD_RUNTIME_LIBRARY} NAME)
          add_custom_command(TARGET ${target} POST_BUILD
            COMMAND ${CMAKE_COMMAND} -E copy_if_different
            "${FMOD_RUNTIME_LIBRARY}"
            "$<TARGET_FILE_DIR:${target}>/${RUNTIME_NAME}"
            COMMENT "Copying FMOD runtime library"
          )
          
          # Create symlinks
          if(FMOD_IS_DEBUG)
            set(SYMLINK_BASE "libfmodL.so")
          else()  
            set(SYMLINK_BASE "libfmod.so")
          endif()
          
          if(NOT "${RUNTIME_NAME}" STREQUAL "${SYMLINK_BASE}")
            add_custom_command(TARGET ${target} POST_BUILD
              COMMAND ${CMAKE_COMMAND} -E create_symlink
              "${RUNTIME_NAME}"
              "$<TARGET_FILE_DIR:${target}>/${SYMLINK_BASE}"
              COMMENT "Creating FMOD library symlink"
            )
          endif()
        endif()
      endif()
    endif()
  endfunction()

  # Automatically apply to all future executable targets
  # This uses CMake's deferred call feature (3.19+)
  if(CMAKE_VERSION VERSION_GREATER_EQUAL "3.19")
    cmake_language(EVAL CODE "
      cmake_language(DEFER CALL fmod_auto_copy_setup)
      function(fmod_auto_copy_setup)
        get_property(all_targets DIRECTORY \${CMAKE_CURRENT_SOURCE_DIR} PROPERTY BUILDSYSTEM_TARGETS)
        foreach(target \${all_targets})
          get_target_property(target_type \${target} TYPE)
          if(target_type STREQUAL \"EXECUTABLE\")
            get_target_property(links \${target} LINK_LIBRARIES)
            if(links MATCHES \"FMOD::FMOD\")
              fmod_copy_binaries(\${target})
            endif()
          endif()
        endforeach()
      endfunction()
    ")
  else()
    # For older CMake versions, provide a macro to be called manually
    macro(fmod_enable_auto_copy)
      # Hook into add_executable
      function(add_executable name)
        _add_executable(${ARGV})
        get_target_property(links ${name} LINK_LIBRARIES)
        if(links MATCHES "FMOD::FMOD")
          fmod_copy_binaries(${name})
        endif()
      endfunction()
    endmacro()
    
    message(STATUS "FMOD: For automatic DLL copying with CMake < 3.19, call fmod_enable_auto_copy() after find_package(FMOD)")
  endif()
endif()