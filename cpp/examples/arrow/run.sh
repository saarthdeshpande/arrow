g++ -std=c++17 $1 -o "$1.o" -larrow -lparquet
LD_LIBRARY_PATH=/usr/local/lib ./$1.o $2
