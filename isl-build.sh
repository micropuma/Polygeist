cd build
cmake -G Ninja .. \
  -DMLIR_DIR=$PWD/../llvm-project/build/lib/cmake/mlir \
  -DCLANG_DIR=$PWD/../llvm-project/build/lib/cmake/clang \
  -DLLVM_TARGETS_TO_BUILD="host" \
  -DLLVM_ENABLE_ASSERTIONS=ON \
  -DPOLYGEIST_USE_LINKER=lld \
  -DPOLYGEIST_POLYMER_ENABLE_ISL=1
  -DCMAKE_BUILD_TYPE=DEBUG
ninja -j $(nproc)
ninja check-polygeist-opt && ninja check-cgeist
