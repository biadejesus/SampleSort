#! /bin/bash

echo comecando testes paralelo com o0

gcc -O0 samplesort_par.c -lm -lpthread -o par.out

echo compilou paralelo

sudo perf stat -o parRo0-t2-520kk.txt -a -r 5 -e cache-misses,cycles,instructions,branches,mem-loads,branch-misses,mem-stores,power/energy-ram/,power/energy-pkg/ ./par.out -t 2 -n 500000000 >> Time-parRo0-t2-520kk
sudo perf stat -o parRo0-t4-520kk.txt -a -r 5 -e cache-misses,cycles,instructions,branches,mem-loads,branch-misses,mem-stores,power/energy-ram/,power/energy-pkg/ ./par.out -t 4 -n 500000000 >> Time-parRo0-t4-520kk
sudo perf stat -o parRo0-t8-520kk.txt -a -r 5 -e cache-misses,cycles,instructions,branches,mem-loads,branch-misses,mem-stores,power/energy-ram/,power/energy-pkg/ ./par.out -t 8 -n 500000000 >> Time-parRo0-t8-520kk
sudo perf stat -o parRo0-t12-520kk.txt -a -r 5 -e cache-misses,cycles,instructions,branches,mem-loads,branch-misses,mem-stores,power/energy-ram/,power/energy-pkg/ ./par.out -t 12 -n 500000000 >> Time-parRo0-t12-520kk
sudo perf stat -o parRo0-t16-520kk.txt -a -r 5 -e cache-misses,cycles,instructions,branches,mem-loads,branch-misses,mem-stores,power/energy-ram/,power/energy-pkg/ ./par.out -t 16 -n 500000000 >> Time-parRo0-t16-520kk
sudo perf stat -o parRo0-t2-420kk.txt -a -r 5 -e cache-misses,cycles,instructions,branches,mem-loads,branch-misses,mem-stores,power/energy-ram/,power/energy-pkg/ ./par.out -t 2 -n 400000000 >> Time-parRo0-t2-420kk
sudo perf stat -o parRo0-t4-420kk.txt -a -r 5 -e cache-misses,cycles,instructions,branches,mem-loads,branch-misses,mem-stores,power/energy-ram/,power/energy-pkg/ ./par.out -t 4 -n 400000000 >> Time-parRo0-t4-420kk
echo metade paralelo
sudo perf stat -o parRo0-t8-420kk.txt -a -r 5 -e cache-misses,cycles,instructions,branches,mem-loads,branch-misses,mem-stores,power/energy-ram/,power/energy-pkg/ ./par.out -t 8 -n 400000000 >> Time-parRo0-t8-420kk
sudo perf stat -o parRo0-t12-420kk.txt -a -r 5 -e cache-misses,cycles,instructions,branches,mem-loads,branch-misses,mem-stores,power/energy-ram/,power/energy-pkg/ ./par.out -t 12 -n 400000000 >> Time-parRo0-t12-420kk
sudo perf stat -o parRo0-t16-420kk.txt -a -r 5 -e cache-misses,cycles,instructions,branches,mem-loads,branch-misses,mem-stores,power/energy-ram/,power/energy-pkg/ ./par.out -t 16 -n 400000000 >> Time-parRo0-t16-420kk
sudo perf stat -o parRo0-t2-320kk.txt -a -r 5 -e cache-misses,cycles,instructions,branches,mem-loads,branch-misses,mem-stores,power/energy-ram/,power/energy-pkg/ ./par.out -t 2 -n 300000000 >> Time-parRo0-t2-320kk
sudo perf stat -o parRo0-t4-320kk.txt -a -r 5 -e cache-misses,cycles,instructions,branches,mem-loads,branch-misses,mem-stores,power/energy-ram/,power/energy-pkg/ ./par.out -t 4 -n 300000000 >> Time-parRo0-t4-320kk
sudo perf stat -o parRo0-t8-320kk.txt -a -r 5 -e cache-misses,cycles,instructions,branches,mem-loads,branch-misses,mem-stores,power/energy-ram/,power/energy-pkg/ ./par.out -t 8 -n 300000000 >> Time-parRo0-t8-320kk
sudo perf stat -o parRo0-t12-320kk.txt -a -r 5 -e cache-misses,cycles,instructions,branches,mem-loads,branch-misses,mem-stores,power/energy-ram/,power/energy-pkg/ ./par.out -t 12 -n 300000000 >> Time-parRo0-t12-320kk
sudo perf stat -o parRo0-t16-320kk.txt -a -r 5 -e cache-misses,cycles,instructions,branches,mem-loads,branch-misses,mem-stores,power/energy-ram/,power/energy-pkg/ ./par.out -t 16 -n 300000000 >> Time-parRo0-t16-320kk
echo acabou paralelo