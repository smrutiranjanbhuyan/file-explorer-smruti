cmake_minimum_required(VERSION 3.10)
project(FileExplorer)

set(CMAKE_CXX_STANDARD 17)

# Find ncurses
find_package(Curses REQUIRED)
if (CURSES_FOUND)
    include_directories(${CURSES_INCLUDE_DIRS})
endif()

# Include directories
include_directories(include)

# Source files
set(SOURCES
    src/main.cpp
    src/FileManager.cpp
    src/UIManager.cpp
)

# Executable
add_executable(file_explorer ${SOURCES})

# Link libraries
target_link_libraries(file_explorer ${CURSES_LIBRARIES})
