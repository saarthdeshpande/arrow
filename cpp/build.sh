mkdir build
cd build
cmake -DARROW_CSV=ON \
    -DARROW_DATASET=ON \
    -DARROW_FILESYSTEM=ON \
    -DARROW_PARQUET=ON \
    -DARROW_WITH_ZLIB=ON \
    -DARROW_USE_THREADS=ON \
    -DARROW_WITH_SNAPPY=ON ..
sudo cmake --build .
sudo cmake --install .
#    -DARROW_JEMALLOC=ON \
