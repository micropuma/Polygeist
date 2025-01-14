cgeist gemm.c -O2 --function=matadd -S -o temp.mlir
polygeist-opt temp.mlir --raise-scf-to-affine -o temp2.mlir 
polygeist-opt temp2.mlir --affine-parallelize -o temp3.mlir 