# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 2.8

# Default target executed when no arguments are given to make.
default_target: all
.PHONY : default_target

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
CMAKE_SOURCE_DIR = /home/pi/dtracker/dtracker

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/pi/dtracker/dtracker

#=============================================================================
# Targets provided globally by CMake.

# Special rule for the target edit_cache
edit_cache:
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --cyan "Running interactive CMake command-line interface..."
	/usr/bin/cmake -i .
.PHONY : edit_cache

# Special rule for the target edit_cache
edit_cache/fast: edit_cache
.PHONY : edit_cache/fast

# Special rule for the target rebuild_cache
rebuild_cache:
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --cyan "Running CMake to regenerate build system..."
	/usr/bin/cmake -H$(CMAKE_SOURCE_DIR) -B$(CMAKE_BINARY_DIR)
.PHONY : rebuild_cache

# Special rule for the target rebuild_cache
rebuild_cache/fast: rebuild_cache
.PHONY : rebuild_cache/fast

# The main all target
all: cmake_check_build_system
	$(CMAKE_COMMAND) -E cmake_progress_start /home/pi/dtracker/dtracker/CMakeFiles /home/pi/dtracker/dtracker/CMakeFiles/progress.marks
	$(MAKE) -f CMakeFiles/Makefile2 all
	$(CMAKE_COMMAND) -E cmake_progress_start /home/pi/dtracker/dtracker/CMakeFiles 0
.PHONY : all

# The main clean target
clean:
	$(MAKE) -f CMakeFiles/Makefile2 clean
.PHONY : clean

# The main clean target
clean/fast: clean
.PHONY : clean/fast

# Prepare targets for installation.
preinstall: all
	$(MAKE) -f CMakeFiles/Makefile2 preinstall
.PHONY : preinstall

# Prepare targets for installation.
preinstall/fast:
	$(MAKE) -f CMakeFiles/Makefile2 preinstall
.PHONY : preinstall/fast

# clear depends
depend:
	$(CMAKE_COMMAND) -H$(CMAKE_SOURCE_DIR) -B$(CMAKE_BINARY_DIR) --check-build-system CMakeFiles/Makefile.cmake 1
.PHONY : depend

#=============================================================================
# Target rules for targets named picamdemo

# Build rule for target.
picamdemo: cmake_check_build_system
	$(MAKE) -f CMakeFiles/Makefile2 picamdemo
.PHONY : picamdemo

# fast build rule for target.
picamdemo/fast:
	$(MAKE) -f CMakeFiles/picamdemo.dir/build.make CMakeFiles/picamdemo.dir/build
.PHONY : picamdemo/fast

camera.o: camera.cpp.o
.PHONY : camera.o

# target to build an object file
camera.cpp.o:
	$(MAKE) -f CMakeFiles/picamdemo.dir/build.make CMakeFiles/picamdemo.dir/camera.cpp.o
.PHONY : camera.cpp.o

camera.i: camera.cpp.i
.PHONY : camera.i

# target to preprocess a source file
camera.cpp.i:
	$(MAKE) -f CMakeFiles/picamdemo.dir/build.make CMakeFiles/picamdemo.dir/camera.cpp.i
.PHONY : camera.cpp.i

camera.s: camera.cpp.s
.PHONY : camera.s

# target to generate assembly for a file
camera.cpp.s:
	$(MAKE) -f CMakeFiles/picamdemo.dir/build.make CMakeFiles/picamdemo.dir/camera.cpp.s
.PHONY : camera.cpp.s

cameracontrol.o: cameracontrol.cpp.o
.PHONY : cameracontrol.o

# target to build an object file
cameracontrol.cpp.o:
	$(MAKE) -f CMakeFiles/picamdemo.dir/build.make CMakeFiles/picamdemo.dir/cameracontrol.cpp.o
.PHONY : cameracontrol.cpp.o

cameracontrol.i: cameracontrol.cpp.i
.PHONY : cameracontrol.i

# target to preprocess a source file
cameracontrol.cpp.i:
	$(MAKE) -f CMakeFiles/picamdemo.dir/build.make CMakeFiles/picamdemo.dir/cameracontrol.cpp.i
.PHONY : cameracontrol.cpp.i

cameracontrol.s: cameracontrol.cpp.s
.PHONY : cameracontrol.s

# target to generate assembly for a file
cameracontrol.cpp.s:
	$(MAKE) -f CMakeFiles/picamdemo.dir/build.make CMakeFiles/picamdemo.dir/cameracontrol.cpp.s
.PHONY : cameracontrol.cpp.s

graphics.o: graphics.cpp.o
.PHONY : graphics.o

# target to build an object file
graphics.cpp.o:
	$(MAKE) -f CMakeFiles/picamdemo.dir/build.make CMakeFiles/picamdemo.dir/graphics.cpp.o
.PHONY : graphics.cpp.o

graphics.i: graphics.cpp.i
.PHONY : graphics.i

# target to preprocess a source file
graphics.cpp.i:
	$(MAKE) -f CMakeFiles/picamdemo.dir/build.make CMakeFiles/picamdemo.dir/graphics.cpp.i
.PHONY : graphics.cpp.i

graphics.s: graphics.cpp.s
.PHONY : graphics.s

# target to generate assembly for a file
graphics.cpp.s:
	$(MAKE) -f CMakeFiles/picamdemo.dir/build.make CMakeFiles/picamdemo.dir/graphics.cpp.s
.PHONY : graphics.cpp.s

picam.o: picam.cpp.o
.PHONY : picam.o

# target to build an object file
picam.cpp.o:
	$(MAKE) -f CMakeFiles/picamdemo.dir/build.make CMakeFiles/picamdemo.dir/picam.cpp.o
.PHONY : picam.cpp.o

picam.i: picam.cpp.i
.PHONY : picam.i

# target to preprocess a source file
picam.cpp.i:
	$(MAKE) -f CMakeFiles/picamdemo.dir/build.make CMakeFiles/picamdemo.dir/picam.cpp.i
.PHONY : picam.cpp.i

picam.s: picam.cpp.s
.PHONY : picam.s

# target to generate assembly for a file
picam.cpp.s:
	$(MAKE) -f CMakeFiles/picamdemo.dir/build.make CMakeFiles/picamdemo.dir/picam.cpp.s
.PHONY : picam.cpp.s

# Help Target
help:
	@echo "The following are some of the valid targets for this Makefile:"
	@echo "... all (the default if no target is provided)"
	@echo "... clean"
	@echo "... depend"
	@echo "... edit_cache"
	@echo "... picamdemo"
	@echo "... rebuild_cache"
	@echo "... camera.o"
	@echo "... camera.i"
	@echo "... camera.s"
	@echo "... cameracontrol.o"
	@echo "... cameracontrol.i"
	@echo "... cameracontrol.s"
	@echo "... graphics.o"
	@echo "... graphics.i"
	@echo "... graphics.s"
	@echo "... picam.o"
	@echo "... picam.i"
	@echo "... picam.s"
.PHONY : help



#=============================================================================
# Special targets to cleanup operation of make.

# Special rule to run CMake to check the build system integrity.
# No rule that depends on this can have commands that come from listfiles
# because they might be regenerated.
cmake_check_build_system:
	$(CMAKE_COMMAND) -H$(CMAKE_SOURCE_DIR) -B$(CMAKE_BINARY_DIR) --check-build-system CMakeFiles/Makefile.cmake 0
.PHONY : cmake_check_build_system

