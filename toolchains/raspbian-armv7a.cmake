set(CMAKE_SYSTEM_NAME Linux)
set(CMAKE_SYSTEM_PROCESSOR arm)
SET(CMAKE_SYSTEM_VERSION 1)

SET(CMAKE_C_COMPILER arm-linux-gnueabihf-gcc)
SET(CMAKE_CXX_COMPILER arm-linux-gnueabihf-g++)

SET(ALSA_LIBRARY ${CMAKE_CURRENT_SOURCE_DIR}/../libraries/rpiv7/libasound.so)
SET(ALSA_INCLUDE_DIR ${CMAKE_CURRENT_SOURCE_DIR}/../libraries/include)

add_compile_options(
        -mfpu=neon
        -march=armv7-a
        -mfloat-abi=hard
)

if(NOT CMAKE_BUILD_TYPE)
        set(CMAKE_BUILD_TYPE        "Release" CACHE STRING "Defaulting to Release build type for Raspbian")
endif()
