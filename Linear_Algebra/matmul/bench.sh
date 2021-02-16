hyperfine -w 3 \
    --export-markdown bench.md \
    --export-csv bench.csv \
    -P size 100 1000 -D 100 \
    "./rust_peroxide/target/release/rust_peroxide {size} {size}" \
    "./rust_o3/target/release/rust_o3 {size} {size}" \
    "./cpp_eigen3_default/bin/matmul {size} {size}" \
    "./cpp_eigen3_blas/bin/matmul {size} {size}" \
    "python python_numpy/matmul.py {size} {size}" \
    "julia -O0 --startup-file=no --compile=min julia/matmul.jl {size} {size}" \
    "./nim_arraymancer/nim_arraymancer {size} {size}"
#    "./chapel/bin/matmul --r={size} --c={size}" \
