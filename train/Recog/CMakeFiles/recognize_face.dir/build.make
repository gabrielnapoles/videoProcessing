# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.28

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Disable VCS-based implicit rules.
% : %,v

# Disable VCS-based implicit rules.
% : RCS/%

# Disable VCS-based implicit rules.
% : RCS/%,v

# Disable VCS-based implicit rules.
% : SCCS/s.%

# Disable VCS-based implicit rules.
% : s.%

.SUFFIXES: .hpux_make_needs_suffix_list

# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

#Suppress display of executed commands.
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
RM = /usr/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/gabriel/Documents/pdv/novogrupo/facialrecognition/ReconhecimentoFacialFinal/train/Recog

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/gabriel/Documents/pdv/novogrupo/facialrecognition/ReconhecimentoFacialFinal/train/Recog

# Include any dependencies generated for this target.
include CMakeFiles/recognize_face.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/recognize_face.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/recognize_face.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/recognize_face.dir/flags.make

CMakeFiles/recognize_face.dir/recognize_face.cpp.o: CMakeFiles/recognize_face.dir/flags.make
CMakeFiles/recognize_face.dir/recognize_face.cpp.o: recognize_face.cpp
CMakeFiles/recognize_face.dir/recognize_face.cpp.o: CMakeFiles/recognize_face.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/gabriel/Documents/pdv/novogrupo/facialrecognition/ReconhecimentoFacialFinal/train/Recog/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/recognize_face.dir/recognize_face.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/recognize_face.dir/recognize_face.cpp.o -MF CMakeFiles/recognize_face.dir/recognize_face.cpp.o.d -o CMakeFiles/recognize_face.dir/recognize_face.cpp.o -c /home/gabriel/Documents/pdv/novogrupo/facialrecognition/ReconhecimentoFacialFinal/train/Recog/recognize_face.cpp

CMakeFiles/recognize_face.dir/recognize_face.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/recognize_face.dir/recognize_face.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/gabriel/Documents/pdv/novogrupo/facialrecognition/ReconhecimentoFacialFinal/train/Recog/recognize_face.cpp > CMakeFiles/recognize_face.dir/recognize_face.cpp.i

CMakeFiles/recognize_face.dir/recognize_face.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/recognize_face.dir/recognize_face.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/gabriel/Documents/pdv/novogrupo/facialrecognition/ReconhecimentoFacialFinal/train/Recog/recognize_face.cpp -o CMakeFiles/recognize_face.dir/recognize_face.cpp.s

# Object files for target recognize_face
recognize_face_OBJECTS = \
"CMakeFiles/recognize_face.dir/recognize_face.cpp.o"

# External object files for target recognize_face
recognize_face_EXTERNAL_OBJECTS =

recognize_face: CMakeFiles/recognize_face.dir/recognize_face.cpp.o
recognize_face: CMakeFiles/recognize_face.dir/build.make
recognize_face: /usr/local/lib/libopencv_gapi.so.4.10.0
recognize_face: /usr/local/lib/libopencv_stitching.so.4.10.0
recognize_face: /usr/local/lib/libopencv_aruco.so.4.10.0
recognize_face: /usr/local/lib/libopencv_bgsegm.so.4.10.0
recognize_face: /usr/local/lib/libopencv_bioinspired.so.4.10.0
recognize_face: /usr/local/lib/libopencv_ccalib.so.4.10.0
recognize_face: /usr/local/lib/libopencv_dnn_objdetect.so.4.10.0
recognize_face: /usr/local/lib/libopencv_dnn_superres.so.4.10.0
recognize_face: /usr/local/lib/libopencv_dpm.so.4.10.0
recognize_face: /usr/local/lib/libopencv_face.so.4.10.0
recognize_face: /usr/local/lib/libopencv_freetype.so.4.10.0
recognize_face: /usr/local/lib/libopencv_fuzzy.so.4.10.0
recognize_face: /usr/local/lib/libopencv_hfs.so.4.10.0
recognize_face: /usr/local/lib/libopencv_img_hash.so.4.10.0
recognize_face: /usr/local/lib/libopencv_intensity_transform.so.4.10.0
recognize_face: /usr/local/lib/libopencv_line_descriptor.so.4.10.0
recognize_face: /usr/local/lib/libopencv_mcc.so.4.10.0
recognize_face: /usr/local/lib/libopencv_quality.so.4.10.0
recognize_face: /usr/local/lib/libopencv_rapid.so.4.10.0
recognize_face: /usr/local/lib/libopencv_reg.so.4.10.0
recognize_face: /usr/local/lib/libopencv_rgbd.so.4.10.0
recognize_face: /usr/local/lib/libopencv_saliency.so.4.10.0
recognize_face: /usr/local/lib/libopencv_signal.so.4.10.0
recognize_face: /usr/local/lib/libopencv_stereo.so.4.10.0
recognize_face: /usr/local/lib/libopencv_structured_light.so.4.10.0
recognize_face: /usr/local/lib/libopencv_superres.so.4.10.0
recognize_face: /usr/local/lib/libopencv_surface_matching.so.4.10.0
recognize_face: /usr/local/lib/libopencv_tracking.so.4.10.0
recognize_face: /usr/local/lib/libopencv_videostab.so.4.10.0
recognize_face: /usr/local/lib/libopencv_wechat_qrcode.so.4.10.0
recognize_face: /usr/local/lib/libopencv_xfeatures2d.so.4.10.0
recognize_face: /usr/local/lib/libopencv_xobjdetect.so.4.10.0
recognize_face: /usr/local/lib/libopencv_xphoto.so.4.10.0
recognize_face: /usr/local/lib/libopencv_shape.so.4.10.0
recognize_face: /usr/local/lib/libopencv_highgui.so.4.10.0
recognize_face: /usr/local/lib/libopencv_datasets.so.4.10.0
recognize_face: /usr/local/lib/libopencv_plot.so.4.10.0
recognize_face: /usr/local/lib/libopencv_text.so.4.10.0
recognize_face: /usr/local/lib/libopencv_ml.so.4.10.0
recognize_face: /usr/local/lib/libopencv_phase_unwrapping.so.4.10.0
recognize_face: /usr/local/lib/libopencv_optflow.so.4.10.0
recognize_face: /usr/local/lib/libopencv_ximgproc.so.4.10.0
recognize_face: /usr/local/lib/libopencv_video.so.4.10.0
recognize_face: /usr/local/lib/libopencv_videoio.so.4.10.0
recognize_face: /usr/local/lib/libopencv_imgcodecs.so.4.10.0
recognize_face: /usr/local/lib/libopencv_objdetect.so.4.10.0
recognize_face: /usr/local/lib/libopencv_calib3d.so.4.10.0
recognize_face: /usr/local/lib/libopencv_dnn.so.4.10.0
recognize_face: /usr/local/lib/libopencv_features2d.so.4.10.0
recognize_face: /usr/local/lib/libopencv_flann.so.4.10.0
recognize_face: /usr/local/lib/libopencv_photo.so.4.10.0
recognize_face: /usr/local/lib/libopencv_imgproc.so.4.10.0
recognize_face: /usr/local/lib/libopencv_core.so.4.10.0
recognize_face: CMakeFiles/recognize_face.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir=/home/gabriel/Documents/pdv/novogrupo/facialrecognition/ReconhecimentoFacialFinal/train/Recog/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable recognize_face"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/recognize_face.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/recognize_face.dir/build: recognize_face
.PHONY : CMakeFiles/recognize_face.dir/build

CMakeFiles/recognize_face.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/recognize_face.dir/cmake_clean.cmake
.PHONY : CMakeFiles/recognize_face.dir/clean

CMakeFiles/recognize_face.dir/depend:
	cd /home/gabriel/Documents/pdv/novogrupo/facialrecognition/ReconhecimentoFacialFinal/train/Recog && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/gabriel/Documents/pdv/novogrupo/facialrecognition/ReconhecimentoFacialFinal/train/Recog /home/gabriel/Documents/pdv/novogrupo/facialrecognition/ReconhecimentoFacialFinal/train/Recog /home/gabriel/Documents/pdv/novogrupo/facialrecognition/ReconhecimentoFacialFinal/train/Recog /home/gabriel/Documents/pdv/novogrupo/facialrecognition/ReconhecimentoFacialFinal/train/Recog /home/gabriel/Documents/pdv/novogrupo/facialrecognition/ReconhecimentoFacialFinal/train/Recog/CMakeFiles/recognize_face.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : CMakeFiles/recognize_face.dir/depend
