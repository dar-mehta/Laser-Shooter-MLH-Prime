cmake_minimum_required(VERSION 2.8)
project( Balloon_Tracking )
find_package( OpenCV )
include_directories( ${OpenCV_INCLUDE_DIRS} )
add_executable( Balloon_Tracking main.cpp )
target_link_libraries( Balloon_Tracking ${OpenCV_LIBS} )
