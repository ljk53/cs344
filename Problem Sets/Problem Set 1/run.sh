#!/bin/bash

# https://forums.developer.nvidia.com/t/jp44ea-cuda-tools-cuda-memcheck-cuda-gdb-not-working/126078
# sudo chmod a+rw /dev/nvhost-dbg-gpu

for i in $(seq 1 3); do
  ln -sf student_func.$i.cu student_func.cu
  make

  cuda-memcheck ./HW1 cinque_terre.gold
  cuda-memcheck ./HW1 cinque_terre_small.jpg

  for j in $(seq 1 10); do
    ./HW1 cinque_terre.gold
    ./HW1 cinque_terre_small.jpg
  done
done

rm student_func.cu
