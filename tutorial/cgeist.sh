cgeist gemm.c --polly --function=matadd --polly-parallel -S -o temp.mlir
polygeist-opt temp.mlir --raise-scf-to-affine -o temp2.mlir 
mlir-opt temp2.mlir --affine-parallelize -o output.mlir 