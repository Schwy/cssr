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
CMAKE_SOURCE_DIR = /user/gautiery/E5/SE-5201-B/polcar

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /user/gautiery/E5/SE-5201-B/polcar

# Include any dependencies generated for this target.
include CMakeFiles/polcarSeparate.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/polcarSeparate.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/polcarSeparate.dir/flags.make

CMakeFiles/polcarSeparate.dir/polcar_body_separate.c.o: CMakeFiles/polcarSeparate.dir/flags.make
CMakeFiles/polcarSeparate.dir/polcar_body_separate.c.o: polcar_body_separate.c
	$(CMAKE_COMMAND) -E cmake_progress_report /user/gautiery/E5/SE-5201-B/polcar/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building C object CMakeFiles/polcarSeparate.dir/polcar_body_separate.c.o"
	/usr/bin/gcc  $(C_DEFINES) $(C_FLAGS) -o CMakeFiles/polcarSeparate.dir/polcar_body_separate.c.o   -c /user/gautiery/E5/SE-5201-B/polcar/polcar_body_separate.c

CMakeFiles/polcarSeparate.dir/polcar_body_separate.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/polcarSeparate.dir/polcar_body_separate.c.i"
	/usr/bin/gcc  $(C_DEFINES) $(C_FLAGS) -E /user/gautiery/E5/SE-5201-B/polcar/polcar_body_separate.c > CMakeFiles/polcarSeparate.dir/polcar_body_separate.c.i

CMakeFiles/polcarSeparate.dir/polcar_body_separate.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/polcarSeparate.dir/polcar_body_separate.c.s"
	/usr/bin/gcc  $(C_DEFINES) $(C_FLAGS) -S /user/gautiery/E5/SE-5201-B/polcar/polcar_body_separate.c -o CMakeFiles/polcarSeparate.dir/polcar_body_separate.c.s

CMakeFiles/polcarSeparate.dir/polcar_body_separate.c.o.requires:
.PHONY : CMakeFiles/polcarSeparate.dir/polcar_body_separate.c.o.requires

CMakeFiles/polcarSeparate.dir/polcar_body_separate.c.o.provides: CMakeFiles/polcarSeparate.dir/polcar_body_separate.c.o.requires
	$(MAKE) -f CMakeFiles/polcarSeparate.dir/build.make CMakeFiles/polcarSeparate.dir/polcar_body_separate.c.o.provides.build
.PHONY : CMakeFiles/polcarSeparate.dir/polcar_body_separate.c.o.provides

CMakeFiles/polcarSeparate.dir/polcar_body_separate.c.o.provides.build: CMakeFiles/polcarSeparate.dir/polcar_body_separate.c.o

# Object files for target polcarSeparate
polcarSeparate_OBJECTS = \
"CMakeFiles/polcarSeparate.dir/polcar_body_separate.c.o"

# External object files for target polcarSeparate
polcarSeparate_EXTERNAL_OBJECTS =

libpolcarSeparate.a: CMakeFiles/polcarSeparate.dir/polcar_body_separate.c.o
libpolcarSeparate.a: CMakeFiles/polcarSeparate.dir/build.make
libpolcarSeparate.a: CMakeFiles/polcarSeparate.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking C static library libpolcarSeparate.a"
	$(CMAKE_COMMAND) -P CMakeFiles/polcarSeparate.dir/cmake_clean_target.cmake
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/polcarSeparate.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/polcarSeparate.dir/build: libpolcarSeparate.a
.PHONY : CMakeFiles/polcarSeparate.dir/build

CMakeFiles/polcarSeparate.dir/requires: CMakeFiles/polcarSeparate.dir/polcar_body_separate.c.o.requires
.PHONY : CMakeFiles/polcarSeparate.dir/requires

CMakeFiles/polcarSeparate.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/polcarSeparate.dir/cmake_clean.cmake
.PHONY : CMakeFiles/polcarSeparate.dir/clean

CMakeFiles/polcarSeparate.dir/depend:
	cd /user/gautiery/E5/SE-5201-B/polcar && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /user/gautiery/E5/SE-5201-B/polcar /user/gautiery/E5/SE-5201-B/polcar /user/gautiery/E5/SE-5201-B/polcar /user/gautiery/E5/SE-5201-B/polcar /user/gautiery/E5/SE-5201-B/polcar/CMakeFiles/polcarSeparate.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/polcarSeparate.dir/depend

