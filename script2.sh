#! /bin/bash

echo comecando testes paralelo com o0

gcc -O0 samplesort_par.c -lm -lpthread -o par.out

echo compilou paralelo

sudo perf stat -o parRo0-t2-520kk.txt -a -r 10 -e cache-misses,cycles,instructions,branches,mem-loads,branch-misses,mem-stores,power/energy-ram/,power/energy-pkg/ ./par.out -t 2 -n 520000000 >> Time-parRo0-t2-520kk.txt
sudo perf stat -o parRo0-t4-520kk.txt -a -r 10 -e cache-misses,cycles,instructions,branches,mem-loads,branch-misses,mem-stores,power/energy-ram/,power/energy-pkg/ ./par.out -t 4 -n 520000000 >> Time-parRo0-t2-520kk.txt
sudo perf stat -o parRo0-t8-520kk.txt -a -r 10 -e cache-misses,cycles,instructions,branches,mem-loads,branch-misses,mem-stores,power/energy-ram/,power/energy-pkg/ ./par.out -t 8 -n 520000000 >> Time-parRo0-t2-520kk.txt
sudo perf stat -o parRo0-t12-520kk.txt -a -r 10 -e cache-misses,cycles,instructions,branches,mem-loads,branch-misses,mem-stores,power/energy-ram/,power/energy-pkg/ ./par.out -t 12 -n 520000000 >> Time-parRo0-t2-520kk.txt
sudo perf stat -o parRo0-t16-520kk.txt -a -r 10 -e cache-misses,cycles,instructions,branches,mem-loads,branch-misses,mem-stores,power/energy-ram/,power/energy-pkg/ ./par.out -t 16 -n 520000000 >> Time-parRo0-t2-520kk.txt
sudo perf stat -o parRo0-t2-420kk.txt -a -r 10 -e cache-misses,cycles,instructions,branches,mem-loads,branch-misses,mem-stores,power/energy-ram/,power/energy-pkg/ ./par.out -t 2 -n 420000000 >> Time-parRo0-t2-420kk.txt
sudo perf stat -o parRo0-t4-420kk.txt -a -r 10 -e cache-misses,cycles,instructions,branches,mem-loads,branch-misses,mem-stores,power/energy-ram/,power/energy-pkg/ ./par.out -t 4 -n 420000000 >> Time-parRo0-t2-420kk.txt
echo metade paralelo
sudo perf stat -o parRo0-t8-420kk.txt -a -r 10 -e cache-misses,cycles,instructions,branches,mem-loads,branch-misses,mem-stores,power/energy-ram/,power/energy-pkg/ ./par.out -t 8 -n 420000000 >> Time-parRo0-t2-420kk.txt
sudo perf stat -o parRo0-t12-420kk.txt -a -r 10 -e cache-misses,cycles,instructions,branches,mem-loads,branch-misses,mem-stores,power/energy-ram/,power/energy-pkg/ ./par.out -t 12 -n 420000000 >> Time-parRo0-t2-420kk.txt
sudo perf stat -o parRo0-t16-420kk.txt -a -r 10 -e cache-misses,cycles,instructions,branches,mem-loads,branch-misses,mem-stores,power/energy-ram/,power/energy-pkg/ ./par.out -t 16 -n 420000000 >> Time-parRo0-t2-420kk.txt
sudo perf stat -o parRo0-t2-320kk.txt -a -r 10 -e cache-misses,cycles,instructions,branches,mem-loads,branch-misses,mem-stores,power/energy-ram/,power/energy-pkg/ ./par.out -t 2 -n 320000000 >> Time-parRo0-t2-320kk.txt
sudo perf stat -o parRo0-t4-320kk.txt -a -r 10 -e cache-misses,cycles,instructions,branches,mem-loads,branch-misses,mem-stores,power/energy-ram/,power/energy-pkg/ ./par.out -t 4 -n 320000000 >> Time-parRo0-t2-320kk.txt
sudo perf stat -o parRo0-t8-320kk.txt -a -r 10 -e cache-misses,cycles,instructions,branches,mem-loads,branch-misses,mem-stores,power/energy-ram/,power/energy-pkg/ ./par.out -t 8 -n 320000000 >> Time-parRo0-t2-320kk.txt
sudo perf stat -o parRo0-t12-320kk.txt -a -r 10 -e cache-misses,cycles,instructions,branches,mem-loads,branch-misses,mem-stores,power/energy-ram/,power/energy-pkg/ ./par.out -t 12 -n 320000000 >> Time-parRo0-t2-320kk.txt
sudo perf stat -o parRo0-t16-320kk.txt -a -r 10 -e cache-misses,cycles,instructions,branches,mem-loads,branch-misses,mem-stores,power/energy-ram/,power/energy-pkg/ ./par.out -t 16 -n 320000000 >> Time-parRo0-t2-320kk.txt

echo comecando testes sequencial com O0

gcc -O0 samplesort_seq.c -lm -o seq.out

echo compilou

sudo perf stat -o seqRo0-t2-520kk.txt -a -r 10 -e cache-misses,cycles,instructions,branches,mem-loads,branch-misses,mem-stores,power/energy-ram/,power/energy-pkg/ ./seq.out -t 2 -n 520000000 >> Time-seqRo0-t2-520kk.txt
sudo perf stat -o seqRo0-t4-520kk.txt -a -r 10 -e cache-misses,cycles,instructions,branches,mem-loads,branch-misses,mem-stores,power/energy-ram/,power/energy-pkg/ ./seq.out -t 4 -n 520000000 >> Time-seqRo0-t2-520kk.txt
sudo perf stat -o seqRo0-t8-520kk.txt -a -r 10 -e cache-misses,cycles,instructions,branches,mem-loads,branch-misses,mem-stores,power/energy-ram/,power/energy-pkg/ ./seq.out -t 8 -n 520000000 >> Time-seqRo0-t2-520kk.txt
sudo perf stat -o seqRo0-t12-520kk.txt -a -r 10 -e cache-misses,cycles,instructions,branches,mem-loads,branch-misses,mem-stores,power/energy-ram/,power/energy-pkg/ ./seq.out -t 12 -n 520000000 >> Time-seqRo0-t2-520kk.txt
sudo perf stat -o seqRo0-t16-520kk.txt -a -r 10 -e cache-misses,cycles,instructions,branches,mem-loads,branch-misses,mem-stores,power/energy-ram/,power/energy-pkg/ ./seq.out -t 16 -n 520000000 >> Time-seqRo0-t2-520kk.txt
sudo perf stat -o seqRo0-t2-420kk.txt -a -r 10 -e cache-misses,cycles,instructions,branches,mem-loads,branch-misses,mem-stores,power/energy-ram/,power/energy-pkg/ ./seq.out -t 2 -n 420000000 >> Time-seqRo0-t2-420kk.txt
sudo perf stat -o seqRo0-t4-420kk.txt -a -r 10 -e cache-misses,cycles,instructions,branches,mem-loads,branch-misses,mem-stores,power/energy-ram/,power/energy-pkg/ ./seq.out -t 4 -n 420000000 >> Time-seqRo0-t2-420kk.txt
echo chegou na metade sequencial
sudo perf stat -o seqRo0-t8-420kk.txt -a -r 10 -e cache-misses,cycles,instructions,branches,mem-loads,branch-misses,mem-stores,power/energy-ram/,power/energy-pkg/ ./seq.out -t 8 -n 420000000 >> Time-seqRo0-t2-420kk.txt
sudo perf stat -o seqRo0-t12-420kk.txt -a -r 10 -e cache-misses,cycles,instructions,branches,mem-loads,branch-misses,mem-stores,power/energy-ram/,power/energy-pkg/ ./seq.out -t 12 -n 420000000 >> Time-seqRo0-t2-420kk.txt
sudo perf stat -o seqRo0-t16-420kk.txt -a -r 10 -e cache-misses,cycles,instructions,branches,mem-loads,branch-misses,mem-stores,power/energy-ram/,power/energy-pkg/ ./seq.out -t 16 -n 420000000 >> Time-seqRo0-t2-420kk.txt
sudo perf stat -o seqRo0-t2-320kk.txt -a -r 10 -e cache-misses,cycles,instructions,branches,mem-loads,branch-misses,mem-stores,power/energy-ram/,power/energy-pkg/ ./seq.out -t 2 -n 320000000 >> Time-seqRo0-t2-320kk.txt
sudo perf stat -o seqRo0-t4-320kk.txt -a -r 10 -e cache-misses,cycles,instructions,branches,mem-loads,branch-misses,mem-stores,power/energy-ram/,power/energy-pkg/ ./seq.out -t 4 -n 320000000 >> Time-seqRo0-t2-320kk.txt
sudo perf stat -o seqRo0-t8-320kk.txt -a -r 10 -e cache-misses,cycles,instructions,branches,mem-loads,branch-misses,mem-stores,power/energy-ram/,power/energy-pkg/ ./seq.out -t 8 -n 320000000 >> Time-seqRo0-t2-320kk.txt
sudo perf stat -o seqRo0-t12-320kk.txt -a -r 10 -e cache-misses,cycles,instructions,branches,mem-loads,branch-misses,mem-stores,power/energy-ram/,power/energy-pkg/ ./seq.out -t 12 -n 320000000 >> Time-seqRo0-t2-320kk.txt
sudo perf stat -o seqRo0-t16-320kk.txt -a -r 10 -e cache-misses,cycles,instructions,branches,mem-loads,branch-misses,mem-stores,power/energy-ram/,power/energy-pkg/ ./seq.out -t 16 -n 320000000 >> Time-seqRo0-t2-320kk.txt
echo acabou sequencial

echo acaboooo


echo comecando testes paralelo com O3

gcc -O3 samplesort_par.c -lm -lpthread -o par.out

echo compilou paralelo

sudo perf stat -o parRo3-t2-520kk.txt -a -r 10 -e cache-misses,cycles,instructions,branches,mem-loads,branch-misses,mem-stores,power/energy-ram/,power/energy-pkg/ ./par.out -t 2 -n 520000000 >> Time-parRo3-t2-520kk.txt
sudo perf stat -o parRo3-t4-520kk.txt -a -r 10 -e cache-misses,cycles,instructions,branches,mem-loads,branch-misses,mem-stores,power/energy-ram/,power/energy-pkg/ ./par.out -t 4 -n 520000000 >> Time-parRo3-t2-520kk.txt
sudo perf stat -o parRo3-t8-520kk.txt -a -r 10 -e cache-misses,cycles,instructions,branches,mem-loads,branch-misses,mem-stores,power/energy-ram/,power/energy-pkg/ ./par.out -t 8 -n 520000000 >> Time-parRo3-t2-520kk.txt
sudo perf stat -o parRo3-t12-520kk.txt -a -r 10 -e cache-misses,cycles,instructions,branches,mem-loads,branch-misses,mem-stores,power/energy-ram/,power/energy-pkg/ ./par.out -t 12 -n 520000000 >> Time-parRo3-t2-520kk.txt
sudo perf stat -o parRo3-t16-520kk.txt -a -r 10 -e cache-misses,cycles,instructions,branches,mem-loads,branch-misses,mem-stores,power/energy-ram/,power/energy-pkg/ ./par.out -t 16 -n 520000000 >> Time-parRo3-t2-520kk.txt
sudo perf stat -o parRo3-t2-420kk.txt -a -r 10 -e cache-misses,cycles,instructions,branches,mem-loads,branch-misses,mem-stores,power/energy-ram/,power/energy-pkg/ ./par.out -t 2 -n 420000000 >> Time-parRo3-t2-420kk.txt
sudo perf stat -o parRo3-t4-420kk.txt -a -r 10 -e cache-misses,cycles,instructions,branches,mem-loads,branch-misses,mem-stores,power/energy-ram/,power/energy-pkg/ ./par.out -t 4 -n 420000000 >> Time-parRo3-t2-420kk.txt
echo metade paralelo
sudo perf stat -o parRo3-t8-420kk.txt -a -r 10 -e cache-misses,cycles,instructions,branches,mem-loads,branch-misses,mem-stores,power/energy-ram/,power/energy-pkg/ ./par.out -t 8 -n 420000000 >> Time-parRo3-t2-420kk.txt
sudo perf stat -o parRo3-t12-420kk.txt -a -r 10 -e cache-misses,cycles,instructions,branches,mem-loads,branch-misses,mem-stores,power/energy-ram/,power/energy-pkg/ ./par.out -t 12 -n 420000000 >> Time-parRo3-t2-420kk.txt
sudo perf stat -o parRo3-t16-420kk.txt -a -r 10 -e cache-misses,cycles,instructions,branches,mem-loads,branch-misses,mem-stores,power/energy-ram/,power/energy-pkg/ ./par.out -t 16 -n 420000000 >> Time-parRo3-t2-420kk.txt
sudo perf stat -o parRo3-t2-320kk.txt -a -r 10 -e cache-misses,cycles,instructions,branches,mem-loads,branch-misses,mem-stores,power/energy-ram/,power/energy-pkg/ ./par.out -t 2 -n 320000000 >> Time-parRo3-t2-320kk.txt
sudo perf stat -o parRo3-t4-320kk.txt -a -r 10 -e cache-misses,cycles,instructions,branches,mem-loads,branch-misses,mem-stores,power/energy-ram/,power/energy-pkg/ ./par.out -t 4 -n 320000000 >> Time-parRo3-t2-320kk.txt
sudo perf stat -o parRo3-t8-320kk.txt -a -r 10 -e cache-misses,cycles,instructions,branches,mem-loads,branch-misses,mem-stores,power/energy-ram/,power/energy-pkg/ ./par.out -t 8 -n 320000000 >> Time-parRo3-t2-320kk.txt
sudo perf stat -o parRo3-t12-320kk.txt -a -r 10 -e cache-misses,cycles,instructions,branches,mem-loads,branch-misses,mem-stores,power/energy-ram/,power/energy-pkg/ ./par.out -t 12 -n 320000000 >> Time-parRo3-t2-320kk.txt
sudo perf stat -o parRo3-t16-320kk.txt -a -r 10 -e cache-misses,cycles,instructions,branches,mem-loads,branch-misses,mem-stores,power/energy-ram/,power/energy-pkg/ ./par.out -t 16 -n 320000000 >> Time-parRo3-t2-320kk.txt

echo comecando testes sequencial com O3

gcc -O3 samplesort_seq.c -lm -o seq.out

echo compilou

sudo perf stat -o seqRo3-t2-520kk.txt -a -r 10 -e cache-misses,cycles,instructions,branches,mem-loads,branch-misses,mem-stores,power/energy-ram/,power/energy-pkg/ ./seq.out -t 2 -n 520000000 >> Time-seqRo3-t2-520kk
sudo perf stat -o seqRo3-t4-520kk.txt -a -r 10 -e cache-misses,cycles,instructions,branches,mem-loads,branch-misses,mem-stores,power/energy-ram/,power/energy-pkg/ ./seq.out -t 4 -n 520000000 >> Time-seqRo3-t2-520kk
sudo perf stat -o seqRo3-t8-520kk.txt -a -r 10 -e cache-misses,cycles,instructions,branches,mem-loads,branch-misses,mem-stores,power/energy-ram/,power/energy-pkg/ ./seq.out -t 8 -n 520000000 >> Time-seqRo3-t2-520kk
sudo perf stat -o seqRo3-t12-520kk.txt -a -r 10 -e cache-misses,cycles,instructions,branches,mem-loads,branch-misses,mem-stores,power/energy-ram/,power/energy-pkg/ ./seq.out -t 12 -n 520000000 >> Time-seqRo3-t2-520kk
sudo perf stat -o seqRo3-t16-520kk.txt -a -r 10 -e cache-misses,cycles,instructions,branches,mem-loads,branch-misses,mem-stores,power/energy-ram/,power/energy-pkg/ ./seq.out -t 16 -n 520000000 >> Time-seqRo3-t2-520kk
sudo perf stat -o seqRo3-t2-420kk.txt -a -r 10 -e cache-misses,cycles,instructions,branches,mem-loads,branch-misses,mem-stores,power/energy-ram/,power/energy-pkg/ ./seq.out -t 2 -n 420000000 >> Time-seqRo3-t2-420kk
sudo perf stat -o seqRo3-t4-420kk.txt -a -r 10 -e cache-misses,cycles,instructions,branches,mem-loads,branch-misses,mem-stores,power/energy-ram/,power/energy-pkg/ ./seq.out -t 4 -n 420000000 >> Time-seqRo3-t2-420kk
echo chegou na metade sequencial
sudo perf stat -o seqRo3-t8-420kk.txt -a -r 10 -e cache-misses,cycles,instructions,branches,mem-loads,branch-misses,mem-stores,power/energy-ram/,power/energy-pkg/ ./seq.out -t 8 -n 420000000 >> Time-seqRo3-t2-420kk
sudo perf stat -o seqRo3-t12-420kk.txt -a -r 10 -e cache-misses,cycles,instructions,branches,mem-loads,branch-misses,mem-stores,power/energy-ram/,power/energy-pkg/ ./seq.out -t 12 -n 420000000 >> Time-seqRo3-t2-420kk
sudo perf stat -o seqRo3-t16-420kk.txt -a -r 10 -e cache-misses,cycles,instructions,branches,mem-loads,branch-misses,mem-stores,power/energy-ram/,power/energy-pkg/ ./seq.out -t 16 -n 420000000 >> Time-seqRo3-t2-420kk
sudo perf stat -o seqRo3-t2-320kk.txt -a -r 10 -e cache-misses,cycles,instructions,branches,mem-loads,branch-misses,mem-stores,power/energy-ram/,power/energy-pkg/ ./seq.out -t 2 -n 320000000 >> Time-seqRo3-t2-320kk
sudo perf stat -o seqRo3-t4-320kk.txt -a -r 10 -e cache-misses,cycles,instructions,branches,mem-loads,branch-misses,mem-stores,power/energy-ram/,power/energy-pkg/ ./seq.out -t 4 -n 320000000 >> Time-seqRo3-t2-320kk
sudo perf stat -o seqRo3-t8-320kk.txt -a -r 10 -e cache-misses,cycles,instructions,branches,mem-loads,branch-misses,mem-stores,power/energy-ram/,power/energy-pkg/ ./seq.out -t 8 -n 320000000 >> Time-seqRo3-t2-320kk
sudo perf stat -o seqRo3-t12-320kk.txt -a -r 10 -e cache-misses,cycles,instructions,branches,mem-loads,branch-misses,mem-stores,power/energy-ram/,power/energy-pkg/ ./seq.out -t 12 -n 320000000 >> Time-seqRo3-t2-320kk
sudo perf stat -o seqRo3-t16-320kk.txt -a -r 10 -e cache-misses,cycles,instructions,branches,mem-loads,branch-misses,mem-stores,power/energy-ram/,power/energy-pkg/ ./seq.out -t 16 -n 320000000 >> Time-seqRo3-t2-320kk
echo acabou sequencial

echo acabooooOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOO
