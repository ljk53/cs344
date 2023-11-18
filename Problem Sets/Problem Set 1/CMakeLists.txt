############################################################################
# <summary> CMakeLists.txt for OpenCV and CUDA. </summary>
# <date>    2012-02-07          </date>
# <author>  Quan Tran Minh. edit by Johannes Kast, Michael Sarahan </author>
# <email>   quantm@unist.ac.kr  kast.jo@googlemail.com msarahan@gmail.com</email>
############################################################################

project(HW1 LANGUAGES C CXX CUDA)

find_package(CUDA REQUIRED)
include_directories("${CUDA_INCLUDE_DIRS}")

find_package (OpenCV 4.0.0 REQUIRED)
include_directories ("/usr/include/opencv4/")

# collect source files

file(GLOB hdr *.hpp *.h )
file(GLOB cu  student_func.3.cu)
set(HW1_files main.cpp reference_calc.cpp compare.cpp)

add_executable(HW1 ${HW1_files} ${hdr} ${cu})
target_link_libraries(HW1 ${OpenCV_LIBS})
