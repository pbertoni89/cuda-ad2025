
pushd /cuda-samples/Samples/1_Utilities/deviceQuery

mkdir build && cd $_

cmake ..

make

./deviceQuery

popd

pushd /cuda-samples/Samples/0_Introduction/vectorAdd


# Compile vectorAdd.cu directly, targeting your Quadro P1000 (compute capability 61)
nvcc vectorAdd.cu -o vectorAdd -gencode arch=compute_61,code=sm_61 -I/cuda-samples/Common/

# Run the manually compiled executable
./vectorAdd

exit 0


mkdir build && cd $_

# cmake .. -DCMAKE_CUDA_ARCHITECTURES=61

cp ../../../1_Utilities/deviceQuery/build/Makefile .
cat Makefile
make clean
rm -f vectorAdd
make

./vectorAdd

popd
