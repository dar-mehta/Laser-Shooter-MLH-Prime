# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.4

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
CMAKE_COMMAND = /Applications/CMake.app/Contents/bin/cmake

# The command to remove a file.
RM = /Applications/CMake.app/Contents/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/Dar/GitHub/Laser-Shooter-MLH-Prime/Balloon_Tracking/Balloon_Tracking

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/Dar/GitHub/Laser-Shooter-MLH-Prime/Balloon_Tracking/Balloon_Tracking

# Include any dependencies generated for this target.
include CMakeFiles/Balloon_Tracking.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/Balloon_Tracking.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/Balloon_Tracking.dir/flags.make

CMakeFiles/Balloon_Tracking.dir/main.cpp.o: CMakeFiles/Balloon_Tracking.dir/flags.make
CMakeFiles/Balloon_Tracking.dir/main.cpp.o: main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/Dar/GitHub/Laser-Shooter-MLH-Prime/Balloon_Tracking/Balloon_Tracking/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/Balloon_Tracking.dir/main.cpp.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/Balloon_Tracking.dir/main.cpp.o -c /Users/Dar/GitHub/Laser-Shooter-MLH-Prime/Balloon_Tracking/Balloon_Tracking/main.cpp

CMakeFiles/Balloon_Tracking.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Balloon_Tracking.dir/main.cpp.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/Dar/GitHub/Laser-Shooter-MLH-Prime/Balloon_Tracking/Balloon_Tracking/main.cpp > CMakeFiles/Balloon_Tracking.dir/main.cpp.i

CMakeFiles/Balloon_Tracking.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Balloon_Tracking.dir/main.cpp.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/Dar/GitHub/Laser-Shooter-MLH-Prime/Balloon_Tracking/Balloon_Tracking/main.cpp -o CMakeFiles/Balloon_Tracking.dir/main.cpp.s

CMakeFiles/Balloon_Tracking.dir/main.cpp.o.requires:

.PHONY : CMakeFiles/Balloon_Tracking.dir/main.cpp.o.requires

CMakeFiles/Balloon_Tracking.dir/main.cpp.o.provides: CMakeFiles/Balloon_Tracking.dir/main.cpp.o.requires
	$(MAKE) -f CMakeFiles/Balloon_Tracking.dir/build.make CMakeFiles/Balloon_Tracking.dir/main.cpp.o.provides.build
.PHONY : CMakeFiles/Balloon_Tracking.dir/main.cpp.o.provides

CMakeFiles/Balloon_Tracking.dir/main.cpp.o.provides.build: CMakeFiles/Balloon_Tracking.dir/main.cpp.o


# Object files for target Balloon_Tracking
Balloon_Tracking_OBJECTS = \
"CMakeFiles/Balloon_Tracking.dir/main.cpp.o"

# External object files for target Balloon_Tracking
Balloon_Tracking_EXTERNAL_OBJECTS =

Balloon_Tracking: CMakeFiles/Balloon_Tracking.dir/main.cpp.o
Balloon_Tracking: CMakeFiles/Balloon_Tracking.dir/build.make
Balloon_Tracking: /usr/local/lib/libopencv_xphoto.3.1.0.dylib
Balloon_Tracking: /usr/local/lib/libopencv_xobjdetect.3.1.0.dylib
Balloon_Tracking: /usr/local/lib/libopencv_tracking.3.1.0.dylib
Balloon_Tracking: /usr/local/lib/libopencv_surface_matching.3.1.0.dylib
Balloon_Tracking: /usr/local/lib/libopencv_structured_light.3.1.0.dylib
Balloon_Tracking: /usr/local/lib/libopencv_stereo.3.1.0.dylib
Balloon_Tracking: /usr/local/lib/libopencv_saliency.3.1.0.dylib
Balloon_Tracking: /usr/local/lib/libopencv_rgbd.3.1.0.dylib
Balloon_Tracking: /usr/local/lib/libopencv_reg.3.1.0.dylib
Balloon_Tracking: /usr/local/lib/libopencv_plot.3.1.0.dylib
Balloon_Tracking: /usr/local/lib/libopencv_optflow.3.1.0.dylib
Balloon_Tracking: /usr/local/lib/libopencv_line_descriptor.3.1.0.dylib
Balloon_Tracking: /usr/local/lib/libopencv_fuzzy.3.1.0.dylib
Balloon_Tracking: /usr/local/lib/libopencv_dpm.3.1.0.dylib
Balloon_Tracking: /usr/local/lib/libopencv_dnn.3.1.0.dylib
Balloon_Tracking: /usr/local/lib/libopencv_datasets.3.1.0.dylib
Balloon_Tracking: /usr/local/lib/libopencv_ccalib.3.1.0.dylib
Balloon_Tracking: /usr/local/lib/libopencv_bioinspired.3.1.0.dylib
Balloon_Tracking: /usr/local/lib/libopencv_bgsegm.3.1.0.dylib
Balloon_Tracking: /usr/local/lib/libopencv_aruco.3.1.0.dylib
Balloon_Tracking: /usr/local/lib/libopencv_videostab.3.1.0.dylib
Balloon_Tracking: /usr/local/lib/libopencv_superres.3.1.0.dylib
Balloon_Tracking: /usr/local/lib/libopencv_stitching.3.1.0.dylib
Balloon_Tracking: /usr/local/lib/libopencv_photo.3.1.0.dylib
Balloon_Tracking: /usr/local/lib/libopencv_text.3.1.0.dylib
Balloon_Tracking: /usr/local/lib/libopencv_face.3.1.0.dylib
Balloon_Tracking: /usr/local/lib/libopencv_ximgproc.3.1.0.dylib
Balloon_Tracking: /usr/local/lib/libopencv_xfeatures2d.3.1.0.dylib
Balloon_Tracking: /usr/local/lib/libopencv_shape.3.1.0.dylib
Balloon_Tracking: /usr/local/lib/libopencv_video.3.1.0.dylib
Balloon_Tracking: /usr/local/lib/libopencv_objdetect.3.1.0.dylib
Balloon_Tracking: /usr/local/lib/libopencv_calib3d.3.1.0.dylib
Balloon_Tracking: /usr/local/lib/libopencv_features2d.3.1.0.dylib
Balloon_Tracking: /usr/local/lib/libopencv_ml.3.1.0.dylib
Balloon_Tracking: /usr/local/lib/libopencv_highgui.3.1.0.dylib
Balloon_Tracking: /usr/local/lib/libopencv_videoio.3.1.0.dylib
Balloon_Tracking: /usr/local/lib/libopencv_imgcodecs.3.1.0.dylib
Balloon_Tracking: /usr/local/lib/libopencv_imgproc.3.1.0.dylib
Balloon_Tracking: /usr/local/lib/libopencv_flann.3.1.0.dylib
Balloon_Tracking: /usr/local/lib/libopencv_core.3.1.0.dylib
Balloon_Tracking: CMakeFiles/Balloon_Tracking.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/Dar/GitHub/Laser-Shooter-MLH-Prime/Balloon_Tracking/Balloon_Tracking/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable Balloon_Tracking"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/Balloon_Tracking.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/Balloon_Tracking.dir/build: Balloon_Tracking

.PHONY : CMakeFiles/Balloon_Tracking.dir/build

CMakeFiles/Balloon_Tracking.dir/requires: CMakeFiles/Balloon_Tracking.dir/main.cpp.o.requires

.PHONY : CMakeFiles/Balloon_Tracking.dir/requires

CMakeFiles/Balloon_Tracking.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/Balloon_Tracking.dir/cmake_clean.cmake
.PHONY : CMakeFiles/Balloon_Tracking.dir/clean

CMakeFiles/Balloon_Tracking.dir/depend:
	cd /Users/Dar/GitHub/Laser-Shooter-MLH-Prime/Balloon_Tracking/Balloon_Tracking && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/Dar/GitHub/Laser-Shooter-MLH-Prime/Balloon_Tracking/Balloon_Tracking /Users/Dar/GitHub/Laser-Shooter-MLH-Prime/Balloon_Tracking/Balloon_Tracking /Users/Dar/GitHub/Laser-Shooter-MLH-Prime/Balloon_Tracking/Balloon_Tracking /Users/Dar/GitHub/Laser-Shooter-MLH-Prime/Balloon_Tracking/Balloon_Tracking /Users/Dar/GitHub/Laser-Shooter-MLH-Prime/Balloon_Tracking/Balloon_Tracking/CMakeFiles/Balloon_Tracking.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/Balloon_Tracking.dir/depend

