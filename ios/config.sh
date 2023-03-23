#!/bin/sh

rm -rf build
mkdir build
cd build

# http://www.open3d.org/docs/release/arm.html
cmake \
    -DBUILD_CUDA_MODULE=OFF \
    -DBUILD_GUI=OFF \
    -DBUILD_PYTHON_MODULE=ON \
    -DBUILD_TENSORFLOW_OPS=OFF \
    -DBUILD_PYTORCH_OPS=OFF \
    -DBUILD_UNIT_TESTS=OFF \
    -DBUILD_ISPC_MODULE=OFF \
    -DCMAKE_INSTALL_PREFIX=../ios/install \
    -DBUILD_EXAMPLES=OFF \
    -DWITH_IPPICV=OFF \
    -GXcode \
    -DCMAKE_TOOLCHAIN_FILE=../ios/iOS.cmake \
    "-DCMAKE_OSX_ARCHITECTURES=arm64;x86_64" \
    -DCMAKE_OSX_DEPLOYMENT_TARGET=13 \
    -DCMAKE_XCODE_ATTRIBUTE_ONLY_ACTIVE_ARCH=NO \
    ..
