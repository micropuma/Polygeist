module {
  func.func @matadd() -> i32 {
    %c8 = arith.constant 8 : index
    %c0_i32 = arith.constant 0 : i32
    %0 = affine.for %arg0 = 0 to 2 iter_args(%arg1 = %c0_i32) -> (i32) {
      %1 = arith.index_cast %arg1 : i32 to index
      %2 = arith.addi %1, %c8 : index
      %3 = arith.index_cast %2 : index to i32
      affine.yield %3 : i32
    }
    return %0 : i32
  }
}

