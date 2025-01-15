mlir-opt temp2.mlir --lower-affine -o output-final.mlir
mlir-opt output-final.mlir --symbol-dce -o output.final.mlir
