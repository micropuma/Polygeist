module {
  func.func @matadd(%arg0: memref<?x300xf32>, %arg1: memref<?x300xf32>, %arg2: memref<?x300xf32>) {
    affine.parallel (%arg3) = (0) to (200) {
      affine.parallel (%arg4) = (0) to (300) {
        %0 = affine.load %arg0[%arg3, %arg4] : memref<?x300xf32>
        %1 = affine.load %arg1[%arg3, %arg4] : memref<?x300xf32>
        %2 = arith.addf %0, %1 : f32
        affine.store %2, %arg2[%arg3, %arg4] : memref<?x300xf32>
      }
    }
    return
  }
}

