module {
  func.func @example(%arg0: memref<1024x1024xf32>, %arg1: memref<1024x1024xf32>) {
    affine.for %i0 = 0 to 1024 step 1 {
      affine.for %i1 = 0 to 1024 step 1 {
        %0 = affine.load %arg0[%i0, %i1] : memref<1024x1024xf32>
        affine.store %0, %arg1[%i0, %i1] : memref<1024x1024xf32>
      }
    }
    return
  }
}

