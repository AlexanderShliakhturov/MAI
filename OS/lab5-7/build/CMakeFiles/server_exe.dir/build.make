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
include CMakeFiles/server_exe.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/server_exe.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/server_exe.dir/flags.make

CMakeFiles/server_exe.dir/src/server.cpp.o: CMakeFiles/server_exe.dir/flags.make
CMakeFiles/server_exe.dir/src/server.cpp.o: ../src/server.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/alexander/labsos/lab5-7/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/server_exe.dir/src/server.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/server_exe.dir/src/server.cpp.o -c /home/alexander/labsos/lab5-7/src/server.cpp

CMakeFiles/server_exe.dir/src/server.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/server_exe.dir/src/server.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/alexander/labsos/lab5-7/src/server.cpp > CMakeFiles/server_exe.dir/src/server.cpp.i

CMakeFiles/server_exe.dir/src/server.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/server_exe.dir/src/server.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/alexander/labsos/lab5-7/src/server.cpp -o CMakeFiles/server_exe.dir/src/server.cpp.s

# Object files for target server_exe
server_exe_OBJECTS = \
"CMakeFiles/server_exe.dir/src/server.cpp.o"

# External object files for target server_exe
server_exe_EXTERNAL_OBJECTS =

server_exe: CMakeFiles/server_exe.dir/src/server.cpp.o
server_exe: CMakeFiles/server_exe.dir/build.make
server_exe: liblab5-7_lib.a
server_exe: /usr/local/lib/libzmq.so.5.2.6
server_exe: CMakeFiles/server_exe.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/alexander/labsos/lab5-7/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable server_exe"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/server_exe.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/server_exe.dir/build: server_exe

.PHONY : CMakeFiles/server_exe.dir/build

CMakeFiles/server_exe.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/server_exe.dir/cmake_clean.cmake
.PHONY : CMakeFiles/server_exe.dir/clean

CMakeFiles/server_exe.dir/depend:
	cd /home/alexander/labsos/lab5-7/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/alexander/labsos/lab5-7 /home/alexander/labsos/lab5-7 /home/alexander/labsos/lab5-7/build /home/alexander/labsos/lab5-7/build /home/alexander/labsos/lab5-7/build/CMakeFiles/server_exe.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/server_exe.dir/depend

