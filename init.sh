#!/bin/bash

# Install all (known) system requirements.
# Note, this is not for any particular wheel, but for *all* of them.
# You could take a more efficient approach and only install the
# packages you actually need, if you so desire.

# TODO: Test before installing, so this script can be
# executed without thinking/waiting.

sudo apt-get install \
     build-essential make cmake \
     python3-dev python3.6-dev python3.7-dev \
     ocl-icd-opencl-dev \
     libboost-all-dev \
     libopenblas-base libopenmpi-dev \
     nvidia-jetpack cuda-toolkit-10-2 \
     cuda-documentation-10-2 cuda-gdb-10-2 cuda-libraries-10-2 cuda-libraries-dev-10-2 cuda-nvcc-10-2 cuda-toolkit-10-2 cuda-tools-10-2 \
     libcublas-dev libcublas10 \
     gcc-11 g++-11 gfortran-11
