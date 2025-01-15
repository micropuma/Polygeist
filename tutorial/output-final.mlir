module {
  func.func @matadd() -> i32 {
    %c8 = arith.constant 8 : index
    %c0_i32 = arith.constant 0 : i32
    %c0 = arith.constant 0 : index
    %c2 = arith.constant 2 : index
    %c1 = arith.constant 1 : index
    %0 = scf.for %arg0 = %c0 to %c2 step %c1 iter_args(%arg1 = %c0_i32) -> (i32) {
      %1 = arith.index_cast %arg1 : i32 to index
      %2 = arith.addi %1, %c8 : index
      %3 = arith.index_cast %2 : index to i32
      scf.yield %3 : i32
    }
    return %0 : i32
  }
}

