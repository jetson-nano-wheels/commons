# This should be sourced, not run.

# Set C, C++ and Fortran versions.
export CC="gcc-11"
export CXX="g++-11"
export FC="gfortran-11"

# Info about CUDA:
export CUDA_HOME=/usr/local/cuda
export CUDADIR=/usr/local/cuda/include/

# These are used mainly when building DGL.
export USE_AVX=OFF
export USE_NCCL=ON
export USE_SYSTEM_NCCL=ON
export NCCL_LIBRARY=
export USE_LIBXSMM=OFF
export USE_CUDA=ON

# Used mainly when building numpy:
export NPY_BLAS_ORDER=openblas
export NPY_BLAS_LIBS='-lopenblas'
export NPY_CBLAS_LIBS='-lcublas -lopenblas'    # To be frank this is currently guesswork
# export NPY_LAPACK_LIBS='-llapack -lopenblas' # Also guesswork!
export OPENBLAS=/usr/lib/aarch64-linux-gnu/
export OPENBLAS_CORETYPE=ARMV8

# Update path
export PATH="${CUDA_HOME}/bin:${PATH}"

# Update LD lib path:
export LD_LIBRARY_PATH="${LD_LIBRARY_PATH}:/home/${USER}/lib/:${CUDA_HOME}/lib64/:${CUDA_HOME}/lib/:${CUDA_HOME}/lib64:${CUDA_HOME}/extras/CUPTI/lib64"
export LD_LIBRARY_PATH_MORE="${LD_LIBRARY_PATH}"
