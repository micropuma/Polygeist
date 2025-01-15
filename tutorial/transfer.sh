cgeist gemm.c --polly \
              --memref-fullrank \
              --function=matadd \
              --polly-parallel \
              --raise-scf-to-affine \
              --polyhedral-opt \
              -S -o temp.mlir
polygeist-opt temp.mlir --raise-scf-to-affine \
                        --affine-parallelize \
                        -o temp2.mlir 
# mlir-opt temp2.mlir --affine-parallelize -o output.mlir 
# mlir-opt output.mlir --lower-affine -o output-final.mlir
# mlir-opt output-final.mlir --symbol-dce -o output.final.mlir