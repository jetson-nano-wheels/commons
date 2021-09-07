#!/bin/bash

# Install all (known) system requirements.
# Note, this is not for any particular wheel, but for *all* of them.
# You could take a more efficient approach and only install the
# packages you actually need if you prefer.

# TODO: Test each dep before installing, so this script can be
# executed without thinking/waiting.

sudo apt-get install wget

OS_VERSION=$(lsb_release -a 2>/dev/null | grep Release | awk '{print $2}' | sed -e 's/\.//g' )
OS="ubuntu${OS_VERSION}"
pushd /tmp/ 2>&1 > /dev/null \
    && wget https://developer.download.nvidia.com/compute/cuda/repos/${OS}/x86_64/cuda-${OS}.pin \
    && sudo mv cuda-${OS}.pin /etc/apt/preferences.d/cuda-repository-pin-600 \
    && popd 2>&1 > /dev/null

sudo apt-key adv --fetch-keys https://developer.download.nvidia.com/compute/cuda/repos/${OS}/x86_64/7fa2af80.pub \
    && sudo add-apt-repository "deb https://developer.download.nvidia.com/compute/cuda/repos/${OS}/x86_64/ /"

sudo add-apt-repository ppa:graphics-drivers/ppa

sudo apt update

sudo apt-get install -y \
     build-essential make cmake software-properties-common \
     cuda-documentation-10-2 cuda-gdb-10-2 cuda-libraries-10-2 cuda-libraries-dev-10-2 \
     cuda-nvcc-10-2 cuda-toolkit-10-2 cuda-tools-10-2 \
     gcc-7  g++-7  gfortran-7 \
     gcc-9  g++-9  gfortran-9 \
     gcc-11 g++-11 gfortran-11 \
     libboost-all-dev libboost-python-dev libboost-thread-dev \
     libcublas-dev libcublas10 \
     libhdf5-dev \
     libopenblas-base libopenblas-dev \
     libopenmpi-dev \
     nvidia-jetpack cuda-toolkit-10-2 \
     ocl-icd-opencl-dev \
     python3.6 python3.8 python-dev python3-dev python3.6-dev python3.8-dev \
     python3-jsmin
