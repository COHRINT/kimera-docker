#define CV_CPU_SIMD_FILENAME "/home/cohrint/kimera-docker/catkin_ws/build/opencv3_catkin/opencv3_src/modules/core/src/stat.simd.hpp"
#define CV_CPU_DISPATCH_MODE SSE4_2
#include "opencv2/core/private/cv_cpu_include_simd_declarations.hpp"

#define CV_CPU_DISPATCH_MODE AVX2
#include "opencv2/core/private/cv_cpu_include_simd_declarations.hpp"

#define CV_CPU_DISPATCH_MODES_ALL AVX2, SSE4_2, BASELINE
