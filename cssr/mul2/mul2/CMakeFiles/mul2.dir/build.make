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
CMAKE_SOURCE_DIR = /user/gautiery/E5/SE-5201-B/mul2/mul2

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /user/gautiery/E5/SE-5201-B/mul2/mul2

# Include any dependencies generated for this target.
include CMakeFiles/mul2.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/mul2.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/mul2.dir/flags.make

CMakeFiles/mul2.dir/mul2_body.c.o: CMakeFiles/mul2.dir/flags.make
CMakeFiles/mul2.dir/mul2_body.c.o: mul2_body.c
	$(CMAKE_COMMAND) -E cmake_progress_report /user/gautiery/E5/SE-5201-B/mul2/mul2/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building C object CMakeFiles/mul2.dir/mul2_body.c.o"
	/usr/bin/gcc  $(C_DEFINES) $(C_FLAGS) -o CMakeFiles/mul2.dir/mul2_body.c.o   -c /user/gautiery/E5/SE-5201-B/mul2/mul2/mul2_body.c

CMakeFiles/mul2.dir/mul2_body.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/mul2.dir/mul2_body.c.i"
	/usr/bin/gcc  $(C_DEFINES) $(C_FLAGS) -E /user/gautiery/E5/SE-5201-B/mul2/mul2/mul2_body.c > CMakeFiles/mul2.dir/mul2_body.c.i

CMakeFiles/mul2.dir/mul2_body.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/mul2.dir/mul2_body.c.s"
	/usr/bin/gcc  $(C_DEFINES) $(C_FLAGS) -S /user/gautiery/E5/SE-5201-B/mul2/mul2/mul2_body.c -o CMakeFiles/mul2.dir/mul2_body.c.s

CMakeFiles/mul2.dir/mul2_body.c.o.requires:
.PHONY : CMakeFiles/mul2.dir/mul2_body.c.o.requires

CMakeFiles/mul2.dir/mul2_body.c.o.provides: CMakeFiles/mul2.dir/mul2_body.c.o.requires
	$(MAKE) -f CMakeFiles/mul2.dir/build.make CMakeFiles/mul2.dir/mul2_body.c.o.provides.build
.PHONY : CMakeFiles/mul2.dir/mul2_body.c.o.provides

CMakeFiles/mul2.dir/mul2_body.c.o.provides.build: CMakeFiles/mul2.dir/mul2_body.c.o

CMakeFiles/mul2.dir/mul2_io.c.o: CMakeFiles/mul2.dir/flags.make
CMakeFiles/mul2.dir/mul2_io.c.o: mul2_io.c
	$(CMAKE_COMMAND) -E cmake_progress_report /user/gautiery/E5/SE-5201-B/mul2/mul2/CMakeFiles $(CMAKE_PROGRESS_2)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building C object CMakeFiles/mul2.dir/mul2_io.c.o"
	/usr/bin/gcc  $(C_DEFINES) $(C_FLAGS) -o CMakeFiles/mul2.dir/mul2_io.c.o   -c /user/gautiery/E5/SE-5201-B/mul2/mul2/mul2_io.c

CMakeFiles/mul2.dir/mul2_io.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/mul2.dir/mul2_io.c.i"
	/usr/bin/gcc  $(C_DEFINES) $(C_FLAGS) -E /user/gautiery/E5/SE-5201-B/mul2/mul2/mul2_io.c > CMakeFiles/mul2.dir/mul2_io.c.i

CMakeFiles/mul2.dir/mul2_io.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/mul2.dir/mul2_io.c.s"
	/usr/bin/gcc  $(C_DEFINES) $(C_FLAGS) -S /user/gautiery/E5/SE-5201-B/mul2/mul2/mul2_io.c -o CMakeFiles/mul2.dir/mul2_io.c.s

CMakeFiles/mul2.dir/mul2_io.c.o.requires:
.PHONY : CMakeFiles/mul2.dir/mul2_io.c.o.requires

CMakeFiles/mul2.dir/mul2_io.c.o.provides: CMakeFiles/mul2.dir/mul2_io.c.o.requires
	$(MAKE) -f CMakeFiles/mul2.dir/build.make CMakeFiles/mul2.dir/mul2_io.c.o.provides.build
.PHONY : CMakeFiles/mul2.dir/mul2_io.c.o.provides

CMakeFiles/mul2.dir/mul2_io.c.o.provides.build: CMakeFiles/mul2.dir/mul2_io.c.o

CMakeFiles/mul2.dir/mul2_main.c.o: CMakeFiles/mul2.dir/flags.make
CMakeFiles/mul2.dir/mul2_main.c.o: mul2_main.c
	$(CMAKE_COMMAND) -E cmake_progress_report /user/gautiery/E5/SE-5201-B/mul2/mul2/CMakeFiles $(CMAKE_PROGRESS_3)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building C object CMakeFiles/mul2.dir/mul2_main.c.o"
	/usr/bin/gcc  $(C_DEFINES) $(C_FLAGS) -o CMakeFiles/mul2.dir/mul2_main.c.o   -c /user/gautiery/E5/SE-5201-B/mul2/mul2/mul2_main.c

CMakeFiles/mul2.dir/mul2_main.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/mul2.dir/mul2_main.c.i"
	/usr/bin/gcc  $(C_DEFINES) $(C_FLAGS) -E /user/gautiery/E5/SE-5201-B/mul2/mul2/mul2_main.c > CMakeFiles/mul2.dir/mul2_main.c.i

CMakeFiles/mul2.dir/mul2_main.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/mul2.dir/mul2_main.c.s"
	/usr/bin/gcc  $(C_DEFINES) $(C_FLAGS) -S /user/gautiery/E5/SE-5201-B/mul2/mul2/mul2_main.c -o CMakeFiles/mul2.dir/mul2_main.c.s

CMakeFiles/mul2.dir/mul2_main.c.o.requires:
.PHONY : CMakeFiles/mul2.dir/mul2_main.c.o.requires

CMakeFiles/mul2.dir/mul2_main.c.o.provides: CMakeFiles/mul2.dir/mul2_main.c.o.requires
	$(MAKE) -f CMakeFiles/mul2.dir/build.make CMakeFiles/mul2.dir/mul2_main.c.o.provides.build
.PHONY : CMakeFiles/mul2.dir/mul2_main.c.o.provides

CMakeFiles/mul2.dir/mul2_main.c.o.provides.build: CMakeFiles/mul2.dir/mul2_main.c.o

# Object files for target mul2
mul2_OBJECTS = \
"CMakeFiles/mul2.dir/mul2_body.c.o" \
"CMakeFiles/mul2.dir/mul2_io.c.o" \
"CMakeFiles/mul2.dir/mul2_main.c.o"

# External object files for target mul2
mul2_EXTERNAL_OBJECTS =

mul2: CMakeFiles/mul2.dir/mul2_body.c.o
mul2: CMakeFiles/mul2.dir/mul2_io.c.o
mul2: CMakeFiles/mul2.dir/mul2_main.c.o
mul2: CMakeFiles/mul2.dir/build.make
mul2: CMakeFiles/mul2.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking C executable mul2"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/mul2.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/mul2.dir/build: mul2
.PHONY : CMakeFiles/mul2.dir/build

CMakeFiles/mul2.dir/requires: CMakeFiles/mul2.dir/mul2_body.c.o.requires
CMakeFiles/mul2.dir/requires: CMakeFiles/mul2.dir/mul2_io.c.o.requires
CMakeFiles/mul2.dir/requires: CMakeFiles/mul2.dir/mul2_main.c.o.requires
.PHONY : CMakeFiles/mul2.dir/requires

CMakeFiles/mul2.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/mul2.dir/cmake_clean.cmake
.PHONY : CMakeFiles/mul2.dir/clean

CMakeFiles/mul2.dir/depend:
	cd /user/gautiery/E5/SE-5201-B/mul2/mul2 && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /user/gautiery/E5/SE-5201-B/mul2/mul2 /user/gautiery/E5/SE-5201-B/mul2/mul2 /user/gautiery/E5/SE-5201-B/mul2/mul2 /user/gautiery/E5/SE-5201-B/mul2/mul2 /user/gautiery/E5/SE-5201-B/mul2/mul2/CMakeFiles/mul2.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/mul2.dir/depend

