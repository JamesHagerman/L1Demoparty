# CMAKE IS STUPIDLY BAD.
# This just runs the stupid Makefile I already have:
cmake_minimum_required(VERSION 2.8.4)
project(runMake)

set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -std=c++11")

add_custom_target(runMake COMMAND make -C ${runMake_SOURCE_DIR}
        CLION_EXE_DIR=${PROJECT_BINARY_DIR})


#cmake_minimum_required(VERSION 3.3)
#project(L1DemoJamisNemo_X)
#
#include_directories(/opt/microchip/xc16/v1.26/support/generic/h)
#
#set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -std=c++11")
#
#set(SOURCE_FILES
#    clut/main.c
#    build.sh
#    color_management.c
#    color_management.h
#    fb_control.c
#    fb_control.h
#    fonts.h
#    Gota_Light.ttf
#    drawing_helpers.c
#    drawing_helpers.h
#    main.c
#    Makefile
#    music.c
#    music.h
#    original.c
#    particles.c
#    particles.h
#    resolution_management.c
#    resolution_management.h
#    screens.h
#    serial.c
#    serial.h
#    sprites.c
#    sprites.h
#    system.h
#    testgfx.h
#    text.c
#    text.h)

#file(GLOB SOURCE_FILES
#        "*"
#        "*.c"
#        )
#add_executable(L1DemoJamisNemo_X ${SOURCE_FILES})
#
#add_custom_target(mytest COMMAND make -C ${mytest_SOURCE_DIR}
#        CLION_EXE_DIR=${PROJECT_BINARY_DIR})