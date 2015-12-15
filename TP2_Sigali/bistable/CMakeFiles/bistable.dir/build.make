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
include CMakeFiles/bistable.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/bistable.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/bistable.dir/flags.make

CMakeFiles/bistable.dir/bistable_body.c.o: CMakeFiles/bistable.dir/flags.make
CMakeFiles/bistable.dir/bistable_body.c.o: bistable_body.c
	$(CMAKE_COMMAND) -E cmake_progress_report /user/gueguena/E5/Signal/TP2_Sigali/bistable/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building C object CMakeFiles/bistable.dir/bistable_body.c.o"
	/usr/bin/gcc  $(C_DEFINES) $(C_FLAGS) -o CMakeFiles/bistable.dir/bistable_body.c.o   -c /user/gueguena/E5/Signal/TP2_Sigali/bistable/bistable_body.c

CMakeFiles/bistable.dir/bistable_body.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/bistable.dir/bistable_body.c.i"
	/usr/bin/gcc  $(C_DEFINES) $(C_FLAGS) -E /user/gueguena/E5/Signal/TP2_Sigali/bistable/bistable_body.c > CMakeFiles/bistable.dir/bistable_body.c.i

CMakeFiles/bistable.dir/bistable_body.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/bistable.dir/bistable_body.c.s"
	/usr/bin/gcc  $(C_DEFINES) $(C_FLAGS) -S /user/gueguena/E5/Signal/TP2_Sigali/bistable/bistable_body.c -o CMakeFiles/bistable.dir/bistable_body.c.s

CMakeFiles/bistable.dir/bistable_body.c.o.requires:
.PHONY : CMakeFiles/bistable.dir/bistable_body.c.o.requires

CMakeFiles/bistable.dir/bistable_body.c.o.provides: CMakeFiles/bistable.dir/bistable_body.c.o.requires
	$(MAKE) -f CMakeFiles/bistable.dir/build.make CMakeFiles/bistable.dir/bistable_body.c.o.provides.build
.PHONY : CMakeFiles/bistable.dir/bistable_body.c.o.provides

CMakeFiles/bistable.dir/bistable_body.c.o.provides.build: CMakeFiles/bistable.dir/bistable_body.c.o

CMakeFiles/bistable.dir/bistable_io.c.o: CMakeFiles/bistable.dir/flags.make
CMakeFiles/bistable.dir/bistable_io.c.o: bistable_io.c
	$(CMAKE_COMMAND) -E cmake_progress_report /user/gueguena/E5/Signal/TP2_Sigali/bistable/CMakeFiles $(CMAKE_PROGRESS_2)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building C object CMakeFiles/bistable.dir/bistable_io.c.o"
	/usr/bin/gcc  $(C_DEFINES) $(C_FLAGS) -o CMakeFiles/bistable.dir/bistable_io.c.o   -c /user/gueguena/E5/Signal/TP2_Sigali/bistable/bistable_io.c

CMakeFiles/bistable.dir/bistable_io.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/bistable.dir/bistable_io.c.i"
	/usr/bin/gcc  $(C_DEFINES) $(C_FLAGS) -E /user/gueguena/E5/Signal/TP2_Sigali/bistable/bistable_io.c > CMakeFiles/bistable.dir/bistable_io.c.i

CMakeFiles/bistable.dir/bistable_io.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/bistable.dir/bistable_io.c.s"
	/usr/bin/gcc  $(C_DEFINES) $(C_FLAGS) -S /user/gueguena/E5/Signal/TP2_Sigali/bistable/bistable_io.c -o CMakeFiles/bistable.dir/bistable_io.c.s

CMakeFiles/bistable.dir/bistable_io.c.o.requires:
.PHONY : CMakeFiles/bistable.dir/bistable_io.c.o.requires

CMakeFiles/bistable.dir/bistable_io.c.o.provides: CMakeFiles/bistable.dir/bistable_io.c.o.requires
	$(MAKE) -f CMakeFiles/bistable.dir/build.make CMakeFiles/bistable.dir/bistable_io.c.o.provides.build
.PHONY : CMakeFiles/bistable.dir/bistable_io.c.o.provides

CMakeFiles/bistable.dir/bistable_io.c.o.provides.build: CMakeFiles/bistable.dir/bistable_io.c.o

CMakeFiles/bistable.dir/bistable_main.c.o: CMakeFiles/bistable.dir/flags.make
CMakeFiles/bistable.dir/bistable_main.c.o: bistable_main.c
	$(CMAKE_COMMAND) -E cmake_progress_report /user/gueguena/E5/Signal/TP2_Sigali/bistable/CMakeFiles $(CMAKE_PROGRESS_3)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building C object CMakeFiles/bistable.dir/bistable_main.c.o"
	/usr/bin/gcc  $(C_DEFINES) $(C_FLAGS) -o CMakeFiles/bistable.dir/bistable_main.c.o   -c /user/gueguena/E5/Signal/TP2_Sigali/bistable/bistable_main.c

CMakeFiles/bistable.dir/bistable_main.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/bistable.dir/bistable_main.c.i"
	/usr/bin/gcc  $(C_DEFINES) $(C_FLAGS) -E /user/gueguena/E5/Signal/TP2_Sigali/bistable/bistable_main.c > CMakeFiles/bistable.dir/bistable_main.c.i

CMakeFiles/bistable.dir/bistable_main.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/bistable.dir/bistable_main.c.s"
	/usr/bin/gcc  $(C_DEFINES) $(C_FLAGS) -S /user/gueguena/E5/Signal/TP2_Sigali/bistable/bistable_main.c -o CMakeFiles/bistable.dir/bistable_main.c.s

CMakeFiles/bistable.dir/bistable_main.c.o.requires:
.PHONY : CMakeFiles/bistable.dir/bistable_main.c.o.requires

CMakeFiles/bistable.dir/bistable_main.c.o.provides: CMakeFiles/bistable.dir/bistable_main.c.o.requires
	$(MAKE) -f CMakeFiles/bistable.dir/build.make CMakeFiles/bistable.dir/bistable_main.c.o.provides.build
.PHONY : CMakeFiles/bistable.dir/bistable_main.c.o.provides

CMakeFiles/bistable.dir/bistable_main.c.o.provides.build: CMakeFiles/bistable.dir/bistable_main.c.o

# Object files for target bistable
bistable_OBJECTS = \
"CMakeFiles/bistable.dir/bistable_body.c.o" \
"CMakeFiles/bistable.dir/bistable_io.c.o" \
"CMakeFiles/bistable.dir/bistable_main.c.o"

# External object files for target bistable
bistable_EXTERNAL_OBJECTS =

bistable: CMakeFiles/bistable.dir/bistable_body.c.o
bistable: CMakeFiles/bistable.dir/bistable_io.c.o
bistable: CMakeFiles/bistable.dir/bistable_main.c.o
bistable: CMakeFiles/bistable.dir/build.make
bistable: CMakeFiles/bistable.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking C executable bistable"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/bistable.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/bistable.dir/build: bistable
.PHONY : CMakeFiles/bistable.dir/build

CMakeFiles/bistable.dir/requires: CMakeFiles/bistable.dir/bistable_body.c.o.requires
CMakeFiles/bistable.dir/requires: CMakeFiles/bistable.dir/bistable_io.c.o.requires
CMakeFiles/bistable.dir/requires: CMakeFiles/bistable.dir/bistable_main.c.o.requires
.PHONY : CMakeFiles/bistable.dir/requires

CMakeFiles/bistable.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/bistable.dir/cmake_clean.cmake
.PHONY : CMakeFiles/bistable.dir/clean

CMakeFiles/bistable.dir/depend:
	cd /user/gueguena/E5/Signal/TP2_Sigali/bistable && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /user/gueguena/E5/Signal/TP2_Sigali/bistable /user/gueguena/E5/Signal/TP2_Sigali/bistable /user/gueguena/E5/Signal/TP2_Sigali/bistable /user/gueguena/E5/Signal/TP2_Sigali/bistable /user/gueguena/E5/Signal/TP2_Sigali/bistable/CMakeFiles/bistable.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/bistable.dir/depend
