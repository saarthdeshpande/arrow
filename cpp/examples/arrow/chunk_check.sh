#chunk_sizes=( 50 100 500 1000 5000 10000 25000 50000 100000 150000 200000  )
chunk_sizes=( 1000000 1250000 1500000 2000000 )

for chunk_size in ${chunk_sizes[@]}
do
	sed "s/ARROW_RETURN_NOT_OK(parquet::arrow::WriteTable.*/ARROW_RETURN_NOT_OK(parquet::arrow::WriteTable(*table.get(), arrow::default_memory_pool(), outfile,$chunk_size, props, arrow_props));/g" parquet_read_write.cc -i
        ./run.sh parquet_read_write.cc yellow_tripdata_2016-01.parquet | grep "=" > results_chunk_check/log.${chunk_size}
        echo "${chunk_size} done!"
done
