#! /bin/bash

echo comecando testes sequencial com O0

gcc -O0 samplesort_seq.c -lm -o seq.out

echo compilou

sudo perf stat -o seqRo0-t2-520kk.txt -a -r 5 -e cache-misses,cycles,instructions,branches,mem-loads,branch-misses,mem-stores,power/energy-ram/,power/energy-pkg/ ./seq.out -t 2 -n 500000000
sudo perf stat -o seqRo0-t4-520kk.txt -a -r 5 -e cache-misses,cycles,instructions,branches,mem-loads,branch-misses,mem-stores,power/energy-ram/,power/energy-pkg/ ./seq.out -t 4 -n 500000000
sudo perf stat -o seqRo0-t8-520kk.txt -a -r 5 -e cache-misses,cycles,instructions,branches,mem-loads,branch-misses,mem-stores,power/energy-ram/,power/energy-pkg/ ./seq.out -t 8 -n 500000000
sudo perf stat -o seqRo0-t12-520kk.txt -a -r 5 -e cache-misses,cycles,instructions,branches,mem-loads,branch-misses,mem-stores,power/energy-ram/,power/energy-pkg/ ./seq.out -t 12 -n 500000000
sudo perf stat -o seqRo0-t16-520kk.txt -a -r 5 -e cache-misses,cycles,instructions,branches,mem-loads,branch-misses,mem-stores,power/energy-ram/,power/energy-pkg/ ./seq.out -t 16 -n 500000000
sudo perf stat -o seqRo0-t2-420kk.txt -a -r 5 -e cache-misses,cycles,instructions,branches,mem-loads,branch-misses,mem-stores,power/energy-ram/,power/energy-pkg/ ./seq.out -t 2 -n 400000000
sudo perf stat -o seqRo0-t4-420kk.txt -a -r 5 -e cache-misses,cycles,instructions,branches,mem-loads,branch-misses,mem-stores,power/energy-ram/,power/energy-pkg/ ./seq.out -t 4 -n 400000000
echo chegou na metade sequencial
sudo perf stat -o seqRo0-t8-420kk.txt -a -r 5 -e cache-misses,cycles,instructions,branches,mem-loads,branch-misses,mem-stores,power/energy-ram/,power/energy-pkg/ ./seq.out -t 8 -n 400000000
sudo perf stat -o seqRo0-t12-420kk.txt -a -r 5 -e cache-misses,cycles,instructions,branches,mem-loads,branch-misses,mem-stores,power/energy-ram/,power/energy-pkg/ ./seq.out -t 12 -n 400000000
sudo perf stat -o seqRo0-t16-420kk.txt -a -r 5 -e cache-misses,cycles,instructions,branches,mem-loads,branch-misses,mem-stores,power/energy-ram/,power/energy-pkg/ ./seq.out -t 16 -n 400000000
sudo perf stat -o seqRo0-t2-320kk.txt -a -r 5 -e cache-misses,cycles,instructions,branches,mem-loads,branch-misses,mem-stores,power/energy-ram/,power/energy-pkg/ ./seq.out -t 2 -n 300000000
sudo perf stat -o seqRo0-t4-320kk.txt -a -r 5 -e cache-misses,cycles,instructions,branches,mem-loads,branch-misses,mem-stores,power/energy-ram/,power/energy-pkg/ ./seq.out -t 4 -n 300000000
sudo perf stat -o seqRo0-t8-320kk.txt -a -r 5 -e cache-misses,cycles,instructions,branches,mem-loads,branch-misses,mem-stores,power/energy-ram/,power/energy-pkg/ ./seq.out -t 8 -n 300000000
sudo perf stat -o seqRo0-t12-320kk.txt -a -r 5 -e cache-misses,cycles,instructions,branches,mem-loads,branch-misses,mem-stores,power/energy-ram/,power/energy-pkg/ ./seq.out -t 12 -n 300000000
sudo perf stat -o seqRo0-t16-320kk.txt -a -r 5 -e cache-misses,cycles,instructions,branches,mem-loads,branch-misses,mem-stores,power/energy-ram/,power/energy-pkg/ ./seq.out -t 16 -n 300000000
echo acabou sequencial
