set(CMAKE_SYSTEM_NAME Darwin)
set(CMAKE_SYSTEM_PROCESSOR x86_64)
SET(CMAKE_SYSTEM_VERSION 1)

SET(CMAKE_C_COMPILER clang)
SET(CMAKE_CXX_COMPILER clang++)

add_compile_options(
        -m64
        -arch x86_64
)

if(NOT CMAKE_BUILD_TYPE)
        set(CMAKE_BUILD_TYPE        "Release" CACHE STRING "Defaulting to Release build type for Darwin")
endif()
