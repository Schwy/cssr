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
CMAKE_SOURCE_DIR = /user/gautiery/E5/SE-5201-B/identite

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /user/gautiery/E5/SE-5201-B/identite

# Include any dependencies generated for this target.
include CMakeFiles/identite.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/identite.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/identite.dir/flags.make

CMakeFiles/identite.dir/identite_body.c.o: CMakeFiles/identite.dir/flags.make
CMakeFiles/identite.dir/identite_body.c.o: identite_body.c
	$(CMAKE_COMMAND) -E cmake_progress_report /user/gautiery/E5/SE-5201-B/identite/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building C object CMakeFiles/identite.dir/identite_body.c.o"
	/usr/bin/gcc  $(C_DEFINES) $(C_FLAGS) -o CMakeFiles/identite.dir/identite_body.c.o   -c /user/gautiery/E5/SE-5201-B/identite/identite_body.c

CMakeFiles/identite.dir/identite_body.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/identite.dir/identite_body.c.i"
	/usr/bin/gcc  $(C_DEFINES) $(C_FLAGS) -E /user/gautiery/E5/SE-5201-B/identite/identite_body.c > CMakeFiles/identite.dir/identite_body.c.i

CMakeFiles/identite.dir/identite_body.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/identite.dir/identite_body.c.s"
	/usr/bin/gcc  $(C_DEFINES) $(C_FLAGS) -S /user/gautiery/E5/SE-5201-B/identite/identite_body.c -o CMakeFiles/identite.dir/identite_body.c.s

CMakeFiles/identite.dir/identite_body.c.o.requires:
.PHONY : CMakeFiles/identite.dir/identite_body.c.o.requires

CMakeFiles/identite.dir/identite_body.c.o.provides: CMakeFiles/identite.dir/identite_body.c.o.requires
	$(MAKE) -f CMakeFiles/identite.dir/build.make CMakeFiles/identite.dir/identite_body.c.o.provides.build
.PHONY : CMakeFiles/identite.dir/identite_body.c.o.provides

CMakeFiles/identite.dir/identite_body.c.o.provides.build: CMakeFiles/identite.dir/identite_body.c.o

CMakeFiles/identite.dir/identite_io.c.o: CMakeFiles/identite.dir/flags.make
CMakeFiles/identite.dir/identite_io.c.o: identite_io.c
	$(CMAKE_COMMAND) -E cmake_progress_report /user/gautiery/E5/SE-5201-B/identite/CMakeFiles $(CMAKE_PROGRESS_2)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building C object CMakeFiles/identite.dir/identite_io.c.o"
	/usr/bin/gcc  $(C_DEFINES) $(C_FLAGS) -o CMakeFiles/identite.dir/identite_io.c.o   -c /user/gautiery/E5/SE-5201-B/identite/identite_io.c

CMakeFiles/identite.dir/identite_io.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/identite.dir/identite_io.c.i"
	/usr/bin/gcc  $(C_DEFINES) $(C_FLAGS) -E /user/gautiery/E5/SE-5201-B/identite/identite_io.c > CMakeFiles/identite.dir/identite_io.c.i

CMakeFiles/identite.dir/identite_io.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/identite.dir/identite_io.c.s"
	/usr/bin/gcc  $(C_DEFINES) $(C_FLAGS) -S /user/gautiery/E5/SE-5201-B/identite/identite_io.c -o CMakeFiles/identite.dir/identite_io.c.s

CMakeFiles/identite.dir/identite_io.c.o.requires:
.PHONY : CMakeFiles/identite.dir/identite_io.c.o.requires

CMakeFiles/identite.dir/identite_io.c.o.provides: CMakeFiles/identite.dir/identite_io.c.o.requires
	$(MAKE) -f CMakeFiles/identite.dir/build.make CMakeFiles/identite.dir/identite_io.c.o.provides.build
.PHONY : CMakeFiles/identite.dir/identite_io.c.o.provides

CMakeFiles/identite.dir/identite_io.c.o.provides.build: CMakeFiles/identite.dir/identite_io.c.o

CMakeFiles/identite.dir/identite_main.c.o: CMakeFiles/identite.dir/flags.make
CMakeFiles/identite.dir/identite_main.c.o: identite_main.c
	$(CMAKE_COMMAND) -E cmake_progress_report /user/gautiery/E5/SE-5201-B/identite/CMakeFiles $(CMAKE_PROGRESS_3)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building C object CMakeFiles/identite.dir/identite_main.c.o"
	/usr/bin/gcc  $(C_DEFINES) $(C_FLAGS) -o CMakeFiles/identite.dir/identite_main.c.o   -c /user/gautiery/E5/SE-5201-B/identite/identite_main.c

CMakeFiles/identite.dir/identite_main.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/identite.dir/identite_main.c.i"
	/usr/bin/gcc  $(C_DEFINES) $(C_FLAGS) -E /user/gautiery/E5/SE-5201-B/identite/identite_main.c > CMakeFiles/identite.dir/identite_main.c.i

CMakeFiles/identite.dir/identite_main.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/identite.dir/identite_main.c.s"
	/usr/bin/gcc  $(C_DEFINES) $(C_FLAGS) -S /user/gautiery/E5/SE-5201-B/identite/identite_main.c -o CMakeFiles/identite.dir/identite_main.c.s

CMakeFiles/identite.dir/identite_main.c.o.requires:
.PHONY : CMakeFiles/identite.dir/identite_main.c.o.requires

CMakeFiles/identite.dir/identite_main.c.o.provides: CMakeFiles/identite.dir/identite_main.c.o.requires
	$(MAKE) -f CMakeFiles/identite.dir/build.make CMakeFiles/identite.dir/identite_main.c.o.provides.build
.PHONY : CMakeFiles/identite.dir/identite_main.c.o.provides

CMakeFiles/identite.dir/identite_main.c.o.provides.build: CMakeFiles/identite.dir/identite_main.c.o

# Object files for target identite
identite_OBJECTS = \
"CMakeFiles/identite.dir/identite_body.c.o" \
"CMakeFiles/identite.dir/identite_io.c.o" \
"CMakeFiles/identite.dir/identite_main.c.o"

# External object files for target identite
identite_EXTERNAL_OBJECTS =

identite: CMakeFiles/identite.dir/identite_body.c.o
identite: CMakeFiles/identite.dir/identite_io.c.o
identite: CMakeFiles/identite.dir/identite_main.c.o
identite: CMakeFiles/identite.dir/build.make
identite: CMakeFiles/identite.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking C executable identite"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/identite.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/identite.dir/build: identite
.PHONY : CMakeFiles/identite.dir/build

CMakeFiles/identite.dir/requires: CMakeFiles/identite.dir/identite_body.c.o.requires
CMakeFiles/identite.dir/requires: CMakeFiles/identite.dir/identite_io.c.o.requires
CMakeFiles/identite.dir/requires: CMakeFiles/identite.dir/identite_main.c.o.requires
.PHONY : CMakeFiles/identite.dir/requires

CMakeFiles/identite.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/identite.dir/cmake_clean.cmake
.PHONY : CMakeFiles/identite.dir/clean

CMakeFiles/identite.dir/depend:
	cd /user/gautiery/E5/SE-5201-B/identite && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /user/gautiery/E5/SE-5201-B/identite /user/gautiery/E5/SE-5201-B/identite /user/gautiery/E5/SE-5201-B/identite /user/gautiery/E5/SE-5201-B/identite /user/gautiery/E5/SE-5201-B/identite/CMakeFiles/identite.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/identite.dir/depend
