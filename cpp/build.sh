mkdir build
cd build
cmake -DARROW_CSV=ON \
    -DARROW_DATASET=ON \
    -DARROW_FILESYSTEM=ON \
    -DARROW_PARQUET=ON \
    -DARROW_JEMALLOC=OFF \
    -DARROW_WITH_ZLIB=ON ..
sudo cmake --build .
sudo cmake --install .
