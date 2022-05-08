cmake_minimum_required(VERSION 3.23)

# Set a project name
project(gstreamer_tutorials)
find_package(PkgConfig)

#using pkg-config to getting Gstreamer
pkg_check_modules(GSTREAMER REQUIRED gstreamer-1.0)
pkg_check_modules(GLIB REQUIRED glib-2.0)

#including GStreamer header files directory
include_directories(
        ${GLIB_INCLUDE_DIRS}
        ${GSTREAMER_INCLUDE_DIRS}
)

#linking GStreamer library directory
link_directories(
        ${GLIB_LIBRARY_DIRS}
        ${GSTREAMER_LIBRARY_DIRS}
)

# add_library(
#   gstream
#   /usr/local/Cellar/gstreamer/1.20.1/include/gstreamer-1.0/gst/gst.h
# )

# add the executable
# add_executable(${PROJECT_NAME} basic_2.c)
add_executable(${PROJECT_NAME} basic_2.c osx_app.h osx_app.mm)
target_link_libraries(${PROJECT_NAME} "-framework Cocoa")

target_link_libraries(${PROJECT_NAME} ${GSTREAMER_LIBRARIES} ${GLIB_LIBRARIES})

install(TARGETS ${PROJECT_NAME} DESTINATION bin)