#! /bin/bash

echo comecando testes paralelo com o0

gcc -O0 samplesort_par.c -lm -lpthread -o par.o

echo compilou paralelo

sudo perf stat -o parRo0-t2-444kk.txt -a -r 5 -i -e cache-misses,cycles,instructions,branches,mem-loads,branch-misses,mem-stores,power/energy-ram/,power/energy-pkg/ ./par.o -t 2 -n 444980000
sudo perf stat -o parRo0-t4-444kk.txt -a -r 5 -i -e cache-misses,cycles,instructions,branches,mem-loads,branch-misses,mem-stores,power/energy-ram/,power/energy-pkg/ ./par.o -t 4 -n 444980000
sudo perf stat -o parRo0-t8-444kk.txt -a -r 5 -i -e cache-misses,cycles,instructions,branches,mem-loads,branch-misses,mem-stores,power/energy-ram/,power/energy-pkg/ ./par.o -t 8 -n 444980000
sudo perf stat -o parRo0-t12-444kk.txt -a -r 5 -i -e cache-misses,cycles,instructions,branches,mem-loads,branch-misses,mem-stores,power/energy-ram/,power/energy-pkg/ ./par.o -t 12 -n 444980000
sudo perf stat -o parRo0-t16-444kk.txt -a -r 5 -i -e cache-misses,cycles,instructions,branches,mem-loads,branch-misses,mem-stores,power/energy-ram/,power/energy-pkg/ ./par.o -t 16 -n 444980000
sudo perf stat -o parRo0-t2-300kk.txt -a -r 5 -i -e cache-misses,cycles,instructions,branches,mem-loads,branch-misses,mem-stores,power/energy-ram/,power/energy-pkg/ ./par.o -t 2 -n 300000000
sudo perf stat -o parRo0-t4-300kk.txt -a -r 5 -i -e cache-misses,cycles,instructions,branches,mem-loads,branch-misses,mem-stores,power/energy-ram/,power/energy-pkg/ ./par.o -t 4 -n 300000000
echo metade paralelo
sudo perf stat -o parRo0-t8-300kk.txt -a -r 5 -i -e cache-misses,cycles,instructions,branches,mem-loads,branch-misses,mem-stores,power/energy-ram/,power/energy-pkg/ ./par.o -t 8 -n 300000000
sudo perf stat -o parRo0-t12-300kk.txt -a -r 5 -i -e cache-misses,cycles,instructions,branches,mem-loads,branch-misses,mem-stores,power/energy-ram/,power/energy-pkg/ ./par.o -t 12 -n 300000000
sudo perf stat -o parRo0-t16-300kk.txt -a -r 5 -i -e cache-misses,cycles,instructions,branches,mem-loads,branch-misses,mem-stores,power/energy-ram/,power/energy-pkg/ ./par.o -t 16 -n 300000000
sudo perf stat -o parRo0-t2-200kk.txt -a -r 5 -i -e cache-misses,cycles,instructions,branches,mem-loads,branch-misses,mem-stores,power/energy-ram/,power/energy-pkg/ ./par.o -t 2 -n 200000000
sudo perf stat -o parRo0-t4-200kk.txt -a -r 5 -i -e cache-misses,cycles,instructions,branches,mem-loads,branch-misses,mem-stores,power/energy-ram/,power/energy-pkg/ ./par.o -t 4 -n 200000000
sudo perf stat -o parRo0-t8-200kk.txt -a -r 5 -i -e cache-misses,cycles,instructions,branches,mem-loads,branch-misses,mem-stores,power/energy-ram/,power/energy-pkg/ ./par.o -t 8 -n 200000000
sudo perf stat -o parRo0-t12-200kk.txt -a -r 5 -i -e cache-misses,cycles,instructions,branches,mem-loads,branch-misses,mem-stores,power/energy-ram/,power/energy-pkg/ ./par.o -t 12 -n 200000000
sudo perf stat -o parRo0-t16-200kk.txt -a -r 5 -i -e cache-misses,cycles,instructions,branches,mem-loads,branch-misses,mem-stores,power/energy-ram/,power/energy-pkg/ ./par.o -t 16 -n 200000000

echo comecando testes sequencial com O0

gcc -O0 samplesort_seq.c -lm -o seq.o

echo compilou

sudo perf stat -o seqRo0-t2-444kk.txt -a -r 5 -i -e cache-misses,cycles,instructions,branches,mem-loads,branch-misses,mem-stores,power/energy-ram/,power/energy-pkg/ ./seq.o -t 2 -n 444980000
sudo perf stat -o seqRo0-t4-444kk.txt -a -r 5 -i -e cache-misses,cycles,instructions,branches,mem-loads,branch-misses,mem-stores,power/energy-ram/,power/energy-pkg/ ./seq.o -t 4 -n 444980000
sudo perf stat -o seqRo0-t8-444kk.txt -a -r 5 -i -e cache-misses,cycles,instructions,branches,mem-loads,branch-misses,mem-stores,power/energy-ram/,power/energy-pkg/ ./seq.o -t 8 -n 444980000
sudo perf stat -o seqRo0-t12-444kk.txt -a -r 5 -i -e cache-misses,cycles,instructions,branches,mem-loads,branch-misses,mem-stores,power/energy-ram/,power/energy-pkg/ ./seq.o -t 12 -n 444980000
sudo perf stat -o seqRo0-t16-444kk.txt -a -r 5 -i -e cache-misses,cycles,instructions,branches,mem-loads,branch-misses,mem-stores,power/energy-ram/,power/energy-pkg/ ./seq.o -t 16 -n 444980000
sudo perf stat -o seqRo0-t2-300kk.txt -a -r 5 -i -e cache-misses,cycles,instructions,branches,mem-loads,branch-misses,mem-stores,power/energy-ram/,power/energy-pkg/ ./seq.o -t 2 -n 300000000
sudo perf stat -o seqRo0-t4-300kk.txt -a -r 5 -i -e cache-misses,cycles,instructions,branches,mem-loads,branch-misses,mem-stores,power/energy-ram/,power/energy-pkg/ ./seq.o -t 4 -n 300000000
echo chegou na metade sequencial
sudo perf stat -o seqRo0-t8-300kk.txt -a -r 5 -i -e cache-misses,cycles,instructions,branches,mem-loads,branch-misses,mem-stores,power/energy-ram/,power/energy-pkg/ ./seq.o -t 8 -n 300000000
sudo perf stat -o seqRo0-t12-300kk.txt -a -r 5 -i -e cache-misses,cycles,instructions,branches,mem-loads,branch-misses,mem-stores,power/energy-ram/,power/energy-pkg/ ./seq.o -t 12 -n 300000000
sudo perf stat -o seqRo0-t16-300kk.txt -a -r 5 -i -e cache-misses,cycles,instructions,branches,mem-loads,branch-misses,mem-stores,power/energy-ram/,power/energy-pkg/ ./seq.o -t 16 -n 300000000
sudo perf stat -o seqRo0-t2-200kk.txt -a -r 5 -i -e cache-misses,cycles,instructions,branches,mem-loads,branch-misses,mem-stores,power/energy-ram/,power/energy-pkg/ ./seq.o -t 2 -n 200000000
sudo perf stat -o seqRo0-t4-200kk.txt -a -r 5 -i -e cache-misses,cycles,instructions,branches,mem-loads,branch-misses,mem-stores,power/energy-ram/,power/energy-pkg/ ./seq.o -t 4 -n 200000000
sudo perf stat -o seqRo0-t8-200kk.txt -a -r 5 -i -e cache-misses,cycles,instructions,branches,mem-loads,branch-misses,mem-stores,power/energy-ram/,power/energy-pkg/ ./seq.o -t 8 -n 200000000
sudo perf stat -o seqRo0-t12-200kk.txt -a -r 5 -i -e cache-misses,cycles,instructions,branches,mem-loads,branch-misses,mem-stores,power/energy-ram/,power/energy-pkg/ ./seq.o -t 12 -n 200000000
sudo perf stat -o seqRo0-t16-200kk.txt -a -r 5 -i -e cache-misses,cycles,instructions,branches,mem-loads,branch-misses,mem-stores,power/energy-ram/,power/energy-pkg/ ./seq.o -t 16 -n 200000000
echo acabou sequencial

echo acaboooo


echo comecando testes paralelo com O3

gcc -O3 samplesort_par.c -lm -lpthread -o par.o

echo compilou paralelo

sudo perf stat -o parRo3-t2-444kk.txt -a -r 5 -i -e cache-misses,cycles,instructions,branches,mem-loads,branch-misses,mem-stores,power/energy-ram/,power/energy-pkg/ ./par.o -t 2 -n 444980000
sudo perf stat -o parRo3-t4-444kk.txt -a -r 5 -i -e cache-misses,cycles,instructions,branches,mem-loads,branch-misses,mem-stores,power/energy-ram/,power/energy-pkg/ ./par.o -t 4 -n 444980000
sudo perf stat -o parRo3-t8-444kk.txt -a -r 5 -i -e cache-misses,cycles,instructions,branches,mem-loads,branch-misses,mem-stores,power/energy-ram/,power/energy-pkg/ ./par.o -t 8 -n 444980000
sudo perf stat -o parRo3-t12-444kk.txt -a -r 5 -i -e cache-misses,cycles,instructions,branches,mem-loads,branch-misses,mem-stores,power/energy-ram/,power/energy-pkg/ ./par.o -t 12 -n 444980000
sudo perf stat -o parRo3-t16-444kk.txt -a -r 5 -i -e cache-misses,cycles,instructions,branches,mem-loads,branch-misses,mem-stores,power/energy-ram/,power/energy-pkg/ ./par.o -t 16 -n 444980000
sudo perf stat -o parRo3-t2-300kk.txt -a -r 5 -i -e cache-misses,cycles,instructions,branches,mem-loads,branch-misses,mem-stores,power/energy-ram/,power/energy-pkg/ ./par.o -t 2 -n 300000000
sudo perf stat -o parRo3-t4-300kk.txt -a -r 5 -i -e cache-misses,cycles,instructions,branches,mem-loads,branch-misses,mem-stores,power/energy-ram/,power/energy-pkg/ ./par.o -t 4 -n 300000000
echo metade paralelo
sudo perf stat -o parRo3-t8-300kk.txt -a -r 5 -i -e cache-misses,cycles,instructions,branches,mem-loads,branch-misses,mem-stores,power/energy-ram/,power/energy-pkg/ ./par.o -t 8 -n 300000000
sudo perf stat -o parRo3-t12-300kk.txt -a -r 5 -i -e cache-misses,cycles,instructions,branches,mem-loads,branch-misses,mem-stores,power/energy-ram/,power/energy-pkg/ ./par.o -t 12 -n 300000000
sudo perf stat -o parRo3-t16-300kk.txt -a -r 5 -i -e cache-misses,cycles,instructions,branches,mem-loads,branch-misses,mem-stores,power/energy-ram/,power/energy-pkg/ ./par.o -t 16 -n 300000000
sudo perf stat -o parRo3-t2-200kk.txt -a -r 5 -i -e cache-misses,cycles,instructions,branches,mem-loads,branch-misses,mem-stores,power/energy-ram/,power/energy-pkg/ ./par.o -t 2 -n 200000000
sudo perf stat -o parRo3-t4-200kk.txt -a -r 5 -i -e cache-misses,cycles,instructions,branches,mem-loads,branch-misses,mem-stores,power/energy-ram/,power/energy-pkg/ ./par.o -t 4 -n 200000000
sudo perf stat -o parRo3-t8-200kk.txt -a -r 5 -i -e cache-misses,cycles,instructions,branches,mem-loads,branch-misses,mem-stores,power/energy-ram/,power/energy-pkg/ ./par.o -t 8 -n 200000000
sudo perf stat -o parRo3-t12-200kk.txt -a -r 5 -i -e cache-misses,cycles,instructions,branches,mem-loads,branch-misses,mem-stores,power/energy-ram/,power/energy-pkg/ ./par.o -t 12 -n 200000000
sudo perf stat -o parRo3-t16-200kk.txt -a -r 5 -i -e cache-misses,cycles,instructions,branches,mem-loads,branch-misses,mem-stores,power/energy-ram/,power/energy-pkg/ ./par.o -t 16 -n 200000000

echo comecando testes sequencial com O3

gcc -O3 samplesort_seq.c -lm -o seq.o

echo compilou

sudo perf stat -o seqRo3-t2-444kk.txt -a -r 5 -i -e cache-misses,cycles,instructions,branches,mem-loads,branch-misses,mem-stores,power/energy-ram/,power/energy-pkg/ ./seq.o -t 2 -n 444980000
sudo perf stat -o seqRo3-t4-444kk.txt -a -r 5 -i -e cache-misses,cycles,instructions,branches,mem-loads,branch-misses,mem-stores,power/energy-ram/,power/energy-pkg/ ./seq.o -t 4 -n 444980000
sudo perf stat -o seqRo3-t8-444kk.txt -a -r 5 -i -e cache-misses,cycles,instructions,branches,mem-loads,branch-misses,mem-stores,power/energy-ram/,power/energy-pkg/ ./seq.o -t 8 -n 444980000
sudo perf stat -o seqRo3-t12-444kk.txt -a -r 5 -i -e cache-misses,cycles,instructions,branches,mem-loads,branch-misses,mem-stores,power/energy-ram/,power/energy-pkg/ ./seq.o -t 12 -n 444980000
sudo perf stat -o seqRo3-t16-444kk.txt -a -r 5 -i -e cache-misses,cycles,instructions,branches,mem-loads,branch-misses,mem-stores,power/energy-ram/,power/energy-pkg/ ./seq.o -t 16 -n 444980000
sudo perf stat -o seqRo3-t2-300kk.txt -a -r 5 -i -e cache-misses,cycles,instructions,branches,mem-loads,branch-misses,mem-stores,power/energy-ram/,power/energy-pkg/ ./seq.o -t 2 -n 300000000
sudo perf stat -o seqRo3-t4-300kk.txt -a -r 5 -i -e cache-misses,cycles,instructions,branches,mem-loads,branch-misses,mem-stores,power/energy-ram/,power/energy-pkg/ ./seq.o -t 4 -n 300000000
echo chegou na metade sequencial
sudo perf stat -o seqRo3-t8-300kk.txt -a -r 5 -i -e cache-misses,cycles,instructions,branches,mem-loads,branch-misses,mem-stores,power/energy-ram/,power/energy-pkg/ ./seq.o -t 8 -n 300000000
sudo perf stat -o seqRo3-t12-300kk.txt -a -r 5 -i -e cache-misses,cycles,instructions,branches,mem-loads,branch-misses,mem-stores,power/energy-ram/,power/energy-pkg/ ./seq.o -t 12 -n 300000000
sudo perf stat -o seqRo3-t16-300kk.txt -a -r 5 -i -e cache-misses,cycles,instructions,branches,mem-loads,branch-misses,mem-stores,power/energy-ram/,power/energy-pkg/ ./seq.o -t 16 -n 300000000
sudo perf stat -o seqRo3-t2-200kk.txt -a -r 5 -i -e cache-misses,cycles,instructions,branches,mem-loads,branch-misses,mem-stores,power/energy-ram/,power/energy-pkg/ ./seq.o -t 2 -n 200000000
sudo perf stat -o seqRo3-t4-200kk.txt -a -r 5 -i -e cache-misses,cycles,instructions,branches,mem-loads,branch-misses,mem-stores,power/energy-ram/,power/energy-pkg/ ./seq.o -t 4 -n 200000000
sudo perf stat -o seqRo3-t8-200kk.txt -a -r 5 -i -e cache-misses,cycles,instructions,branches,mem-loads,branch-misses,mem-stores,power/energy-ram/,power/energy-pkg/ ./seq.o -t 8 -n 200000000
sudo perf stat -o seqRo3-t12-200kk.txt -a -r 5 -i -e cache-misses,cycles,instructions,branches,mem-loads,branch-misses,mem-stores,power/energy-ram/,power/energy-pkg/ ./seq.o -t 12 -n 200000000
sudo perf stat -o seqRo3-t16-200kk.txt -a -r 5 -i -e cache-misses,cycles,instructions,branches,mem-loads,branch-misses,mem-stores,power/energy-ram/,power/energy-pkg/ ./seq.o -t 16 -n 200000000
echo acabou sequencial

echo acaboooo
