# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 2.8

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
CMAKE_SOURCE_DIR = /user/gueguena/E5/Signal/TP2_Sigali/bistable

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /user/gueguena/E5/Signal/TP2_Sigali/bistable

# Include any dependencies generated for this target.
include CMakeFiles/bistable_threads.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/bistable_threads.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/bistable_threads.dir/flags.make

CMakeFiles/bistable_threads.dir/bistable_body.c.o: CMakeFiles/bistable_threads.dir/flags.make
CMakeFiles/bistable_threads.dir/bistable_body.c.o: bistable_body.c
	$(CMAKE_COMMAND) -E cmake_progress_report /user/gueguena/E5/Signal/TP2_Sigali/bistable/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building C object CMakeFiles/bistable_threads.dir/bistable_body.c.o"
	/usr/bin/gcc  $(C_DEFINES) $(C_FLAGS) -o CMakeFiles/bistable_threads.dir/bistable_body.c.o   -c /user/gueguena/E5/Signal/TP2_Sigali/bistable/bistable_body.c

CMakeFiles/bistable_threads.dir/bistable_body.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/bistable_threads.dir/bistable_body.c.i"
	/usr/bin/gcc  $(C_DEFINES) $(C_FLAGS) -E /user/gueguena/E5/Signal/TP2_Sigali/bistable/bistable_body.c > CMakeFiles/bistable_threads.dir/bistable_body.c.i

CMakeFiles/bistable_threads.dir/bistable_body.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/bistable_threads.dir/bistable_body.c.s"
	/usr/bin/gcc  $(C_DEFINES) $(C_FLAGS) -S /user/gueguena/E5/Signal/TP2_Sigali/bistable/bistable_body.c -o CMakeFiles/bistable_threads.dir/bistable_body.c.s

CMakeFiles/bistable_threads.dir/bistable_body.c.o.requires:
.PHONY : CMakeFiles/bistable_threads.dir/bistable_body.c.o.requires

CMakeFiles/bistable_threads.dir/bistable_body.c.o.provides: CMakeFiles/bistable_threads.dir/bistable_body.c.o.requires
	$(MAKE) -f CMakeFiles/bistable_threads.dir/build.make CMakeFiles/bistable_threads.dir/bistable_body.c.o.provides.build
.PHONY : CMakeFiles/bistable_threads.dir/bistable_body.c.o.provides

CMakeFiles/bistable_threads.dir/bistable_body.c.o.provides.build: CMakeFiles/bistable_threads.dir/bistable_body.c.o

CMakeFiles/bistable_threads.dir/bistable_io.c.o: CMakeFiles/bistable_threads.dir/flags.make
CMakeFiles/bistable_threads.dir/bistable_io.c.o: bistable_io.c
	$(CMAKE_COMMAND) -E cmake_progress_report /user/gueguena/E5/Signal/TP2_Sigali/bistable/CMakeFiles $(CMAKE_PROGRESS_2)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building C object CMakeFiles/bistable_threads.dir/bistable_io.c.o"
	/usr/bin/gcc  $(C_DEFINES) $(C_FLAGS) -o CMakeFiles/bistable_threads.dir/bistable_io.c.o   -c /user/gueguena/E5/Signal/TP2_Sigali/bistable/bistable_io.c

CMakeFiles/bistable_threads.dir/bistable_io.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/bistable_threads.dir/bistable_io.c.i"
	/usr/bin/gcc  $(C_DEFINES) $(C_FLAGS) -E /user/gueguena/E5/Signal/TP2_Sigali/bistable/bistable_io.c > CMakeFiles/bistable_threads.dir/bistable_io.c.i

CMakeFiles/bistable_threads.dir/bistable_io.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/bistable_threads.dir/bistable_io.c.s"
	/usr/bin/gcc  $(C_DEFINES) $(C_FLAGS) -S /user/gueguena/E5/Signal/TP2_Sigali/bistable/bistable_io.c -o CMakeFiles/bistable_threads.dir/bistable_io.c.s

CMakeFiles/bistable_threads.dir/bistable_io.c.o.requires:
.PHONY : CMakeFiles/bistable_threads.dir/bistable_io.c.o.requires

CMakeFiles/bistable_threads.dir/bistable_io.c.o.provides: CMakeFiles/bistable_threads.dir/bistable_io.c.o.requires
	$(MAKE) -f CMakeFiles/bistable_threads.dir/build.make CMakeFiles/bistable_threads.dir/bistable_io.c.o.provides.build
.PHONY : CMakeFiles/bistable_threads.dir/bistable_io.c.o.provides

CMakeFiles/bistable_threads.dir/bistable_io.c.o.provides.build: CMakeFiles/bistable_threads.dir/bistable_io.c.o

# Object files for target bistable_threads
bistable_threads_OBJECTS = \
"CMakeFiles/bistable_threads.dir/bistable_body.c.o" \
"CMakeFiles/bistable_threads.dir/bistable_io.c.o"

# External object files for target bistable_threads
bistable_threads_EXTERNAL_OBJECTS =

bistable_threads: CMakeFiles/bistable_threads.dir/bistable_body.c.o
bistable_threads: CMakeFiles/bistable_threads.dir/bistable_io.c.o
bistable_threads: CMakeFiles/bistable_threads.dir/build.make
bistable_threads: CMakeFiles/bistable_threads.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking C executable bistable_threads"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/bistable_threads.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/bistable_threads.dir/build: bistable_threads
.PHONY : CMakeFiles/bistable_threads.dir/build

CMakeFiles/bistable_threads.dir/requires: CMakeFiles/bistable_threads.dir/bistable_body.c.o.requires
CMakeFiles/bistable_threads.dir/requires: CMakeFiles/bistable_threads.dir/bistable_io.c.o.requires
.PHONY : CMakeFiles/bistable_threads.dir/requires

CMakeFiles/bistable_threads.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/bistable_threads.dir/cmake_clean.cmake
.PHONY : CMakeFiles/bistable_threads.dir/clean

CMakeFiles/bistable_threads.dir/depend:
	cd /user/gueguena/E5/Signal/TP2_Sigali/bistable && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /user/gueguena/E5/Signal/TP2_Sigali/bistable /user/gueguena/E5/Signal/TP2_Sigali/bistable /user/gueguena/E5/Signal/TP2_Sigali/bistable /user/gueguena/E5/Signal/TP2_Sigali/bistable /user/gueguena/E5/Signal/TP2_Sigali/bistable/CMakeFiles/bistable_threads.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/bistable_threads.dir/depend

