# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.16

# compile CXX with /usr/bin/c++
CXX_FLAGS =    -fsigned-char -W -Wall -Werror=return-type -Werror=non-virtual-dtor -Werror=address -Werror=sequence-point -Wformat -Werror=format-security -Wmissing-declarations -Wundef -Winit-self -Wpointer-arith -Wshadow -Wsign-promo -Wuninitialized -Winit-self -Wsuggest-override -Wno-narrowing -Wno-delete-non-virtual-dtor -Wno-comment -Wimplicit-fallthrough=3 -fdiagnostics-show-option -Wno-long-long -pthread -fomit-frame-pointer -ffunction-sections -fdata-sections  -msse -msse2 -msse3 -fvisibility=hidden -fvisibility-inlines-hidden -O3 -DNDEBUG  -DNDEBUG -fPIC  

CXX_DEFINES = -DCVAPI_EXPORTS -DOPENCV_WITH_ITT=1 -D_USE_MATH_DEFINES -D__OPENCV_BUILD=1 -D__STDC_CONSTANT_MACROS -D__STDC_FORMAT_MACROS -D__STDC_LIMIT_MACROS

CXX_INCLUDES = -I/home/cohrint/kimera-docker/catkin_ws/build/opencv3_catkin/opencv3_build/3rdparty/ippicv/ippicv_lnx/include -I/home/cohrint/kimera-docker/catkin_ws/build/opencv3_catkin/opencv3_build/3rdparty/ippicv/ippiw_lnx/include -I/home/cohrint/kimera-docker/catkin_ws/build/opencv3_catkin/opencv3_src/modules/core/include -I/home/cohrint/kimera-docker/catkin_ws/build/opencv3_catkin/opencv3_build/modules/core -I/home/cohrint/kimera-docker/catkin_ws/build/opencv3_catkin/opencv3_src/3rdparty/ittnotify/include -isystem /home/cohrint/kimera-docker/catkin_ws/build/opencv3_catkin/opencv3_build -isystem /usr/include/eigen3 

# Custom defines: modules/core/CMakeFiles/opencv_core.dir/src/alloc.cpp.o_DEFINES = HAVE_POSIX_MEMALIGN=1;HAVE_MALLOC_H=1;HAVE_MEMALIGN=1

# Custom flags: modules/core/CMakeFiles/opencv_core.dir/src/convert.sse4_1.cpp.o_FLAGS =  -mssse3 -msse4.1

# Custom defines: modules/core/CMakeFiles/opencv_core.dir/src/convert.sse4_1.cpp.o_DEFINES = CV_CPU_DISPATCH_MODE=SSE4_1;CV_CPU_COMPILE_SSSE3=1;CV_CPU_COMPILE_SSE4_1=1

# Custom flags: modules/core/CMakeFiles/opencv_core.dir/stat.sse4_2.cpp.o_FLAGS =  -mssse3 -msse4.1 -mpopcnt -msse4.2

# Custom defines: modules/core/CMakeFiles/opencv_core.dir/stat.sse4_2.cpp.o_DEFINES = CV_CPU_DISPATCH_MODE=SSE4_2;CV_CPU_COMPILE_SSSE3=1;CV_CPU_COMPILE_SSE4_1=1;CV_CPU_COMPILE_POPCNT=1;CV_CPU_COMPILE_SSE4_2=1

# Custom flags: modules/core/CMakeFiles/opencv_core.dir/src/convert.fp16.cpp.o_FLAGS =  -mssse3 -msse4.1 -mpopcnt -msse4.2 -mf16c -mavx

# Custom defines: modules/core/CMakeFiles/opencv_core.dir/src/convert.fp16.cpp.o_DEFINES = CV_CPU_DISPATCH_MODE=FP16;CV_CPU_COMPILE_SSSE3=1;CV_CPU_COMPILE_SSE4_1=1;CV_CPU_COMPILE_POPCNT=1;CV_CPU_COMPILE_SSE4_2=1;CV_CPU_COMPILE_FP16=1;CV_CPU_COMPILE_AVX=1

# Custom flags: modules/core/CMakeFiles/opencv_core.dir/mathfuncs_core.avx.cpp.o_FLAGS =  -mssse3 -msse4.1 -mpopcnt -msse4.2 -mavx

# Custom defines: modules/core/CMakeFiles/opencv_core.dir/mathfuncs_core.avx.cpp.o_DEFINES = CV_CPU_DISPATCH_MODE=AVX;CV_CPU_COMPILE_SSSE3=1;CV_CPU_COMPILE_SSE4_1=1;CV_CPU_COMPILE_POPCNT=1;CV_CPU_COMPILE_SSE4_2=1;CV_CPU_COMPILE_AVX=1

# Custom flags: modules/core/CMakeFiles/opencv_core.dir/src/convert.avx2.cpp.o_FLAGS =  -mssse3 -msse4.1 -mpopcnt -msse4.2 -mf16c -mfma -mavx -mavx2

# Custom defines: modules/core/CMakeFiles/opencv_core.dir/src/convert.avx2.cpp.o_DEFINES = CV_CPU_DISPATCH_MODE=AVX2;CV_CPU_COMPILE_SSSE3=1;CV_CPU_COMPILE_SSE4_1=1;CV_CPU_COMPILE_POPCNT=1;CV_CPU_COMPILE_SSE4_2=1;CV_CPU_COMPILE_FP16=1;CV_CPU_COMPILE_FMA3=1;CV_CPU_COMPILE_AVX=1;CV_CPU_COMPILE_AVX2=1

# Custom flags: modules/core/CMakeFiles/opencv_core.dir/mathfuncs_core.avx2.cpp.o_FLAGS =  -mssse3 -msse4.1 -mpopcnt -msse4.2 -mf16c -mfma -mavx -mavx2

# Custom defines: modules/core/CMakeFiles/opencv_core.dir/mathfuncs_core.avx2.cpp.o_DEFINES = CV_CPU_DISPATCH_MODE=AVX2;CV_CPU_COMPILE_SSSE3=1;CV_CPU_COMPILE_SSE4_1=1;CV_CPU_COMPILE_POPCNT=1;CV_CPU_COMPILE_SSE4_2=1;CV_CPU_COMPILE_FP16=1;CV_CPU_COMPILE_FMA3=1;CV_CPU_COMPILE_AVX=1;CV_CPU_COMPILE_AVX2=1

# Custom flags: modules/core/CMakeFiles/opencv_core.dir/stat.avx2.cpp.o_FLAGS =  -mssse3 -msse4.1 -mpopcnt -msse4.2 -mf16c -mfma -mavx -mavx2

# Custom defines: modules/core/CMakeFiles/opencv_core.dir/stat.avx2.cpp.o_DEFINES = CV_CPU_DISPATCH_MODE=AVX2;CV_CPU_COMPILE_SSSE3=1;CV_CPU_COMPILE_SSE4_1=1;CV_CPU_COMPILE_POPCNT=1;CV_CPU_COMPILE_SSE4_2=1;CV_CPU_COMPILE_FP16=1;CV_CPU_COMPILE_FMA3=1;CV_CPU_COMPILE_AVX=1;CV_CPU_COMPILE_AVX2=1

