# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.16

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list


# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/alexander/labsos/lab5-7

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/alexander/labsos/lab5-7/build

# Include any dependencies generated for this target.
include CMakeFiles/lab5-7_lib.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/lab5-7_lib.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/lab5-7_lib.dir/flags.make

CMakeFiles/lab5-7_lib.dir/src/functions.cpp.o: CMakeFiles/lab5-7_lib.dir/flags.make
CMakeFiles/lab5-7_lib.dir/src/functions.cpp.o: ../src/functions.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/alexander/labsos/lab5-7/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/lab5-7_lib.dir/src/functions.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/lab5-7_lib.dir/src/functions.cpp.o -c /home/alexander/labsos/lab5-7/src/functions.cpp

CMakeFiles/lab5-7_lib.dir/src/functions.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/lab5-7_lib.dir/src/functions.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/alexander/labsos/lab5-7/src/functions.cpp > CMakeFiles/lab5-7_lib.dir/src/functions.cpp.i

CMakeFiles/lab5-7_lib.dir/src/functions.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/lab5-7_lib.dir/src/functions.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/alexander/labsos/lab5-7/src/functions.cpp -o CMakeFiles/lab5-7_lib.dir/src/functions.cpp.s

# Object files for target lab5-7_lib
lab5__7_lib_OBJECTS = \
"CMakeFiles/lab5-7_lib.dir/src/functions.cpp.o"

# External object files for target lab5-7_lib
lab5__7_lib_EXTERNAL_OBJECTS =

liblab5-7_lib.a: CMakeFiles/lab5-7_lib.dir/src/functions.cpp.o
liblab5-7_lib.a: CMakeFiles/lab5-7_lib.dir/build.make
liblab5-7_lib.a: CMakeFiles/lab5-7_lib.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/alexander/labsos/lab5-7/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX static library liblab5-7_lib.a"
	$(CMAKE_COMMAND) -P CMakeFiles/lab5-7_lib.dir/cmake_clean_target.cmake
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/lab5-7_lib.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/lab5-7_lib.dir/build: liblab5-7_lib.a

.PHONY : CMakeFiles/lab5-7_lib.dir/build

CMakeFiles/lab5-7_lib.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/lab5-7_lib.dir/cmake_clean.cmake
.PHONY : CMakeFiles/lab5-7_lib.dir/clean

CMakeFiles/lab5-7_lib.dir/depend:
	cd /home/alexander/labsos/lab5-7/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/alexander/labsos/lab5-7 /home/alexander/labsos/lab5-7 /home/alexander/labsos/lab5-7/build /home/alexander/labsos/lab5-7/build /home/alexander/labsos/lab5-7/build/CMakeFiles/lab5-7_lib.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/lab5-7_lib.dir/depend

