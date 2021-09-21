#!/bin/bash

# https://forums.developer.nvidia.com/t/jp44ea-cuda-tools-cuda-memcheck-cuda-gdb-not-working/126078
# sudo chmod a+rw /dev/nvhost-dbg-gpu

make

cuda-memcheck ./HW1 cinque_terre.gold
cuda-memcheck ./HW1 cinque_terre_small.jpg
