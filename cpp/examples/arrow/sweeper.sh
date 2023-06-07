search_dir=nyc_total_amt_sweeps
col_sizes=(8 16 32 64 128 256 512 1024 2048 4096 8192 16384 32768 65536 131072 262144 524288 1048576 2097152 4194304 8388608)

for col_size in ${col_sizes[@]}
do
	./run.sh parquet_read_write.cc nyc_total_amt_sweeps/total_amt_nyc.${col_size}.parquet | grep "=" > results/log.${col_size}
	echo "${col_size} done!"
done
