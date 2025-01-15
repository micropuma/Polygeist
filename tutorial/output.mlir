module {
  func.func @matadd(%arg0: memref<2x2xf32>, %arg1: memref<2x2xf32>, %arg2: memref<2x2xf32>) {
    affine.parallel (%arg3) = (0) to (2) {
      affine.parallel (%arg4) = (0) to (2) {
        %0 = affine.load %arg0[%arg3, %arg4] : memref<2x2xf32>
        %1 = affine.load %arg1[%arg3, %arg4] : memref<2x2xf32>
        %2 = arith.addf %0, %1 : f32
        affine.store %2, %arg2[%arg3, %arg4] : memref<2x2xf32>
      }
    }
    return
  }
}

