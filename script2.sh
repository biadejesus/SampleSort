#! /bin/bash

echo comecando testes sequencial

gcc -O3 samplesort_seq.c -lm -o seq.o

echo compilou

sudo perf stat -o seqR-t2-100kk.txt -a -r 10 -i -e cache-misses,cycles,instructions,cache-references,branches,cpu-clock,mem-loads,faults,task-clock,branch-misses,mem-stores,power/energy-cores/,power/energy-ram/,power/energy-pkg/ ./seq.o -t 2 -n 100000000
sudo perf stat -o seqR-t4-100kk.txt -a -r 10 -i -e cache-misses,cycles,instructions,cache-references,branches,cpu-clock,mem-loads,faults,task-clock,branch-misses,mem-stores,power/energy-cores/,power/energy-ram/,power/energy-pkg/ ./seq.o -t 4 -n 100000000
sudo perf stat -o seqR-t8-100kk.txt -a -r 10 -i -e cache-misses,cycles,instructions,cache-references,branches,cpu-clock,mem-loads,faults,task-clock,branch-misses,mem-stores,power/energy-cores/,power/energy-ram/,power/energy-pkg/ ./seq.o -t 8 -n 100000000
sudo perf stat -o seqR-t12-100kk.txt -a -r 10 -i -e cache-misses,cycles,instructions,cache-references,branches,cpu-clock,mem-loads,faults,task-clock,branch-misses,mem-stores,power/energy-cores/,power/energy-ram/,power/energy-pkg/ ./seq.o -t 12 -n 100000000
sudo perf stat -o seqR-t16-100kk.txt -a -r 10 -i -e cache-misses,cycles,instructions,cache-references,branches,cpu-clock,mem-loads,faults,task-clock,branch-misses,mem-stores,power/energy-cores/,power/energy-ram/,power/energy-pkg/ ./seq.o -t 16 -n 100000000
sudo perf stat -o seqR-t2-75kk.txt -a -r 10 -i -e cache-misses,cycles,instructions,cache-references,branches,cpu-clock,mem-loads,faults,task-clock,branch-misses,mem-stores,power/energy-cores/,power/energy-ram/,power/energy-pkg/ ./seq.o -t 2 -n 75000000
sudo perf stat -o seqR-t4-75kk.txt -a -r 10 -i -e cache-misses,cycles,instructions,cache-references,branches,cpu-clock,mem-loads,faults,task-clock,branch-misses,mem-stores,power/energy-cores/,power/energy-ram/,power/energy-pkg/ ./seq.o -t 4 -n 75000000
echo chegou na metade sequencial
sudo perf stat -o seqR-t8-75kk.txt -a -r 10 -i -e cache-misses,cycles,instructions,cache-references,branches,cpu-clock,mem-loads,faults,task-clock,branch-misses,mem-stores,power/energy-cores/,power/energy-ram/,power/energy-pkg/ ./seq.o -t 8 -n 75000000
sudo perf stat -o seqR-t12-75kk.txt -a -r 10 -i -e cache-misses,cycles,instructions,cache-references,branches,cpu-clock,mem-loads,faults,task-clock,branch-misses,mem-stores,power/energy-cores/,power/energy-ram/,power/energy-pkg/ ./seq.o -t 12 -n 75000000
sudo perf stat -o seqR-t16-75kk.txt -a -r 10 -i -e cache-misses,cycles,instructions,cache-references,branches,cpu-clock,mem-loads,faults,task-clock,branch-misses,mem-stores,power/energy-cores/,power/energy-ram/,power/energy-pkg/ ./seq.o -t 16 -n 75000000
sudo perf stat -o seqR-t2-50kk.txt -a -r 10 -i -e cache-misses,cycles,instructions,cache-references,branches,cpu-clock,mem-loads,faults,task-clock,branch-misses,mem-stores,power/energy-cores/,power/energy-ram/,power/energy-pkg/ ./seq.o -t 2 -n 50000000
sudo perf stat -o seqR-t4-50kk.txt -a -r 10 -i -e cache-misses,cycles,instructions,cache-references,branches,cpu-clock,mem-loads,faults,task-clock,branch-misses,mem-stores,power/energy-cores/,power/energy-ram/,power/energy-pkg/ ./seq.o -t 4 -n 50000000
sudo perf stat -o seqR-t8-50kk.txt -a -r 10 -i -e cache-misses,cycles,instructions,cache-references,branches,cpu-clock,mem-loads,faults,task-clock,branch-misses,mem-stores,power/energy-cores/,power/energy-ram/,power/energy-pkg/ ./seq.o -t 8 -n 50000000
sudo perf stat -o seqR-t12-50kk.txt -a -r 10 -i -e cache-misses,cycles,instructions,cache-references,branches,cpu-clock,mem-loads,faults,task-clock,branch-misses,mem-stores,power/energy-cores/,power/energy-ram/,power/energy-pkg/ ./seq.o -t 12 -n 50000000
sudo perf stat -o seqR-t16-50kk.txt -a -r 10 -i -e cache-misses,cycles,instructions,cache-references,branches,cpu-clock,mem-loads,faults,task-clock,branch-misses,mem-stores,power/energy-cores/,power/energy-ram/,power/energy-pkg/ ./seq.o -t 16 -n 50000000
echo acabou sequencial
echo comecando testes paralelo

gcc -O3 samplesort_par.c -lm -lpthread -o par.o

echo compilou paralelo

sudo perf stat -o parR-t2-100kk.txt -a -r 10 -i -e cache-misses,cycles,instructions,cache-references,branches,cpu-clock,mem-loads,faults,task-clock,branch-misses,mem-stores,power/energy-cores/,power/energy-ram/,power/energy-pkg/ ./par.o -t 2 -n 100000000
sudo perf stat -o parR-t4-100kk.txt -a -r 10 -i -e cache-misses,cycles,instructions,cache-references,branches,cpu-clock,mem-loads,faults,task-clock,branch-misses,mem-stores,power/energy-cores/,power/energy-ram/,power/energy-pkg/ ./par.o -t 4 -n 100000000
sudo perf stat -o parR-t8-100kk.txt -a -r 10 -i -e cache-misses,cycles,instructions,cache-references,branches,cpu-clock,mem-loads,faults,task-clock,branch-misses,mem-stores,power/energy-cores/,power/energy-ram/,power/energy-pkg/ ./par.o -t 8 -n 100000000
sudo perf stat -o parR-t12-100kk.txt -a -r 10 -i -e cache-misses,cycles,instructions,cache-references,branches,cpu-clock,mem-loads,faults,task-clock,branch-misses,mem-stores,power/energy-cores/,power/energy-ram/,power/energy-pkg/ ./par.o -t 12 -n 100000000
sudo perf stat -o parR-t16-100kk.txt -a -r 10 -i -e cache-misses,cycles,instructions,cache-references,branches,cpu-clock,mem-loads,faults,task-clock,branch-misses,mem-stores,power/energy-cores/,power/energy-ram/,power/energy-pkg/ ./par.o -t 16 -n 100000000
sudo perf stat -o parR-t2-75kk.txt -a -r 10 -i -e cache-misses,cycles,instructions,cache-references,branches,cpu-clock,mem-loads,faults,task-clock,branch-misses,mem-stores,power/energy-cores/,power/energy-ram/,power/energy-pkg/ ./par.o -t 2 -n 75000000
sudo perf stat -o parR-t4-75kk.txt -a -r 10 -i -e cache-misses,cycles,instructions,cache-references,branches,cpu-clock,mem-loads,faults,task-clock,branch-misses,mem-stores,power/energy-cores/,power/energy-ram/,power/energy-pkg/ ./par.o -t 4 -n 75000000
echo metade paralelo
sudo perf stat -o parR-t8-75kk.txt -a -r 10 -i -e cache-misses,cycles,instructions,cache-references,branches,cpu-clock,mem-loads,faults,task-clock,branch-misses,mem-stores,power/energy-cores/,power/energy-ram/,power/energy-pkg/ ./par.o -t 8 -n 75000000
sudo perf stat -o parR-t12-75kk.txt -a -r 10 -i -e cache-misses,cycles,instructions,cache-references,branches,cpu-clock,mem-loads,faults,task-clock,branch-misses,mem-stores,power/energy-cores/,power/energy-ram/,power/energy-pkg/ ./par.o -t 12 -n 75000000
sudo perf stat -o parR-t16-75kk.txt -a -r 10 -i -e cache-misses,cycles,instructions,cache-references,branches,cpu-clock,mem-loads,faults,task-clock,branch-misses,mem-stores,power/energy-cores/,power/energy-ram/,power/energy-pkg/ ./par.o -t 16 -n 75000000
sudo perf stat -o parR-t2-50kk.txt -a -r 10 -i -e cache-misses,cycles,instructions,cache-references,branches,cpu-clock,mem-loads,faults,task-clock,branch-misses,mem-stores,power/energy-cores/,power/energy-ram/,power/energy-pkg/ ./par.o -t 2 -n 50000000
sudo perf stat -o parR-t4-50kk.txt -a -r 10 -i -e cache-misses,cycles,instructions,cache-references,branches,cpu-clock,mem-loads,faults,task-clock,branch-misses,mem-stores,power/energy-cores/,power/energy-ram/,power/energy-pkg/ ./par.o -t 4 -n 50000000
sudo perf stat -o parR-t8-50kk.txt -a -r 10 -i -e cache-misses,cycles,instructions,cache-references,branches,cpu-clock,mem-loads,faults,task-clock,branch-misses,mem-stores,power/energy-cores/,power/energy-ram/,power/energy-pkg/ ./par.o -t 8 -n 50000000
sudo perf stat -o parR-t12-50kk.txt -a -r 10 -i -e cache-misses,cycles,instructions,cache-references,branches,cpu-clock,mem-loads,faults,task-clock,branch-misses,mem-stores,power/energy-cores/,power/energy-ram/,power/energy-pkg/ ./par.o -t 12 -n 50000000
sudo perf stat -o parR-t16-50kk.txt -a -r 10 -i -e cache-misses,cycles,instructions,cache-references,branches,cpu-clock,mem-loads,faults,task-clock,branch-misses,mem-stores,power/energy-cores/,power/energy-ram/,power/energy-pkg/ ./par.o -t 16 -n 50000000
echo acaboooo
