cmake_minimum_required(VERSION 2.8)
project( Train )
find_package( OpenCV REQUIRED )
include_directories( ${OpenCV_INCLUDE_DIRS} )
add_executable( Train Train.cpp )
target_link_libraries( Train ${OpenCV_LIBS} )
