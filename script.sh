#! /bin/bash

echo comecando testes sequencial

gcc -O3 samplesort_seq.c -lm -o seq.o

echo sequencial compilado

sudo perf stat -o seq01-t2-100kk.txt -a -i -e cache-misses,cycles,instructions,cache-references,branches,cpu-clock,mem-loads,faults,task-clock,branch-misses,mem-stores,power/energy-cores/,power/energy-ram/,power/energy-pkg/ ./seq.o -t 2 -n 100000000
sudo perf stat -o seq02-t2-100kk.txt -a -i -e cache-misses,cycles,instructions,cache-references,branches,cpu-clock,mem-loads,faults,task-clock,branch-misses,mem-stores,power/energy-cores/,power/energy-ram/,power/energy-pkg/ ./seq.o -t 2 -n 100000000
sudo perf stat -o seq03-t2-100kk.txt -a -i -e cache-misses,cycles,instructions,cache-references,branches,cpu-clock,mem-loads,faults,task-clock,branch-misses,mem-stores,power/energy-cores/,power/energy-ram/,power/energy-pkg/ ./seq.o -t 2 -n 100000000
sudo perf stat -o seq04-t2-100kk.txt -a -i -e cache-misses,cycles,instructions,cache-references,branches,cpu-clock,mem-loads,faults,task-clock,branch-misses,mem-stores,power/energy-cores/,power/energy-ram/,power/energy-pkg/ ./seq.o -t 2 -n 100000000
sudo perf stat -o seq05-t2-100kk.txt -a -i -e cache-misses,cycles,instructions,cache-references,branches,cpu-clock,mem-loads,faults,task-clock,branch-misses,mem-stores,power/energy-cores/,power/energy-ram/,power/energy-pkg/ ./seq.o -t 2 -n 100000000
sudo perf stat -o seq06-t2-100kk.txt -a -i -e cache-misses,cycles,instructions,cache-references,branches,cpu-clock,mem-loads,faults,task-clock,branch-misses,mem-stores,power/energy-cores/,power/energy-ram/,power/energy-pkg/ ./seq.o -t 2 -n 100000000
sudo perf stat -o seq07-t2-100kk.txt -a -i -e cache-misses,cycles,instructions,cache-references,branches,cpu-clock,mem-loads,faults,task-clock,branch-misses,mem-stores,power/energy-cores/,power/energy-ram/,power/energy-pkg/ ./seq.o -t 2 -n 100000000
sudo perf stat -o seq08-t2-100kk.txt -a -i -e cache-misses,cycles,instructions,cache-references,branches,cpu-clock,mem-loads,faults,task-clock,branch-misses,mem-stores,power/energy-cores/,power/energy-ram/,power/energy-pkg/ ./seq.o -t 2 -n 100000000
sudo perf stat -o seq09-t2-100kk.txt -a -i -e cache-misses,cycles,instructions,cache-references,branches,cpu-clock,mem-loads,faults,task-clock,branch-misses,mem-stores,power/energy-cores/,power/energy-ram/,power/energy-pkg/ ./seq.o -t 2 -n 100000000
sudo perf stat -o seq10-t2-100kk.txt -a -i -e cache-misses,cycles,instructions,cache-references,branches,cpu-clock,mem-loads,faults,task-clock,branch-misses,mem-stores,power/energy-cores/,power/energy-ram/,power/energy-pkg/ ./seq.o -t 2 -n 100000000

echo primeira rodada seq

sudo perf stat -o seq01-t4-100kk.txt -a -i -e cache-misses,cycles,instructions,cache-references,branches,cpu-clock,mem-loads,faults,task-clock,branch-misses,mem-stores,power/energy-cores/,power/energy-ram/,power/energy-pkg/ ./seq.o -t 4 -n 100000000
sudo perf stat -o seq02-t4-100kk.txt -a -i -e cache-misses,cycles,instructions,cache-references,branches,cpu-clock,mem-loads,faults,task-clock,branch-misses,mem-stores,power/energy-cores/,power/energy-ram/,power/energy-pkg/ ./seq.o -t 4 -n 100000000
sudo perf stat -o seq03-t4-100kk.txt -a -i -e cache-misses,cycles,instructions,cache-references,branches,cpu-clock,mem-loads,faults,task-clock,branch-misses,mem-stores,power/energy-cores/,power/energy-ram/,power/energy-pkg/ ./seq.o -t 4 -n 100000000
sudo perf stat -o seq04-t4-100kk.txt -a -i -e cache-misses,cycles,instructions,cache-references,branches,cpu-clock,mem-loads,faults,task-clock,branch-misses,mem-stores,power/energy-cores/,power/energy-ram/,power/energy-pkg/ ./seq.o -t 4 -n 100000000
sudo perf stat -o seq05-t4-100kk.txt -a -i -e cache-misses,cycles,instructions,cache-references,branches,cpu-clock,mem-loads,faults,task-clock,branch-misses,mem-stores,power/energy-cores/,power/energy-ram/,power/energy-pkg/ ./seq.o -t 4 -n 100000000
sudo perf stat -o seq06-t4-100kk.txt -a -i -e cache-misses,cycles,instructions,cache-references,branches,cpu-clock,mem-loads,faults,task-clock,branch-misses,mem-stores,power/energy-cores/,power/energy-ram/,power/energy-pkg/ ./seq.o -t 4 -n 100000000
sudo perf stat -o seq07-t4-100kk.txt -a -i -e cache-misses,cycles,instructions,cache-references,branches,cpu-clock,mem-loads,faults,task-clock,branch-misses,mem-stores,power/energy-cores/,power/energy-ram/,power/energy-pkg/ ./seq.o -t 4 -n 100000000
sudo perf stat -o seq08-t4-100kk.txt -a -i -e cache-misses,cycles,instructions,cache-references,branches,cpu-clock,mem-loads,faults,task-clock,branch-misses,mem-stores,power/energy-cores/,power/energy-ram/,power/energy-pkg/ ./seq.o -t 4 -n 100000000
sudo perf stat -o seq09-t4-100kk.txt -a -i -e cache-misses,cycles,instructions,cache-references,branches,cpu-clock,mem-loads,faults,task-clock,branch-misses,mem-stores,power/energy-cores/,power/energy-ram/,power/energy-pkg/ ./seq.o -t 4 -n 100000000
sudo perf stat -o seq10-t4-100kk.txt -a -i -e cache-misses,cycles,instructions,cache-references,branches,cpu-clock,mem-loads,faults,task-clock,branch-misses,mem-stores,power/energy-cores/,power/energy-ram/,power/energy-pkg/ ./seq.o -t 4 -n 100000000

echo segunda rodada seq

sudo perf stat -o seq01-t8-100kk.txt -a -i -e cache-misses,cycles,instructions,cache-references,branches,cpu-clock,mem-loads,faults,task-clock,branch-misses,mem-stores,power/energy-cores/,power/energy-ram/,power/energy-pkg/ ./seq.o -t 8 -n 100000000
sudo perf stat -o seq02-t8-100kk.txt -a -i -e cache-misses,cycles,instructions,cache-references,branches,cpu-clock,mem-loads,faults,task-clock,branch-misses,mem-stores,power/energy-cores/,power/energy-ram/,power/energy-pkg/ ./seq.o -t 8 -n 100000000
sudo perf stat -o seq03-t8-100kk.txt -a -i -e cache-misses,cycles,instructions,cache-references,branches,cpu-clock,mem-loads,faults,task-clock,branch-misses,mem-stores,power/energy-cores/,power/energy-ram/,power/energy-pkg/ ./seq.o -t 8 -n 100000000
sudo perf stat -o seq04-t8-100kk.txt -a -i -e cache-misses,cycles,instructions,cache-references,branches,cpu-clock,mem-loads,faults,task-clock,branch-misses,mem-stores,power/energy-cores/,power/energy-ram/,power/energy-pkg/ ./seq.o -t 8 -n 100000000
sudo perf stat -o seq05-t8-100kk.txt -a -i -e cache-misses,cycles,instructions,cache-references,branches,cpu-clock,mem-loads,faults,task-clock,branch-misses,mem-stores,power/energy-cores/,power/energy-ram/,power/energy-pkg/ ./seq.o -t 8 -n 100000000
sudo perf stat -o seq06-t8-100kk.txt -a -i -e cache-misses,cycles,instructions,cache-references,branches,cpu-clock,mem-loads,faults,task-clock,branch-misses,mem-stores,power/energy-cores/,power/energy-ram/,power/energy-pkg/ ./seq.o -t 8 -n 100000000
sudo perf stat -o seq07-t8-100kk.txt -a -i -e cache-misses,cycles,instructions,cache-references,branches,cpu-clock,mem-loads,faults,task-clock,branch-misses,mem-stores,power/energy-cores/,power/energy-ram/,power/energy-pkg/ ./seq.o -t 8 -n 100000000
sudo perf stat -o seq08-t8-100kk.txt -a -i -e cache-misses,cycles,instructions,cache-references,branches,cpu-clock,mem-loads,faults,task-clock,branch-misses,mem-stores,power/energy-cores/,power/energy-ram/,power/energy-pkg/ ./seq.o -t 8 -n 100000000
sudo perf stat -o seq09-t8-100kk.txt -a -i -e cache-misses,cycles,instructions,cache-references,branches,cpu-clock,mem-loads,faults,task-clock,branch-misses,mem-stores,power/energy-cores/,power/energy-ram/,power/energy-pkg/ ./seq.o -t 8 -n 100000000
sudo perf stat -o seq10-t8-100kk.txt -a -i -e cache-misses,cycles,instructions,cache-references,branches,cpu-clock,mem-loads,faults,task-clock,branch-misses,mem-stores,power/energy-cores/,power/energy-ram/,power/energy-pkg/ ./seq.o -t 8 -n 100000000

echo terceira rodada seq

sudo perf stat -o seq01-t12-100kk.txt -a -i -e cache-misses,cycles,instructions,cache-references,branches,cpu-clock,mem-loads,faults,task-clock,branch-misses,mem-stores,power/energy-cores/,power/energy-ram/,power/energy-pkg/ ./seq.o -t 12 -n 100000000
sudo perf stat -o seq02-t12-100kk.txt -a -i -e cache-misses,cycles,instructions,cache-references,branches,cpu-clock,mem-loads,faults,task-clock,branch-misses,mem-stores,power/energy-cores/,power/energy-ram/,power/energy-pkg/ ./seq.o -t 12 -n 100000000
sudo perf stat -o seq03-t12-100kk.txt -a -i -e cache-misses,cycles,instructions,cache-references,branches,cpu-clock,mem-loads,faults,task-clock,branch-misses,mem-stores,power/energy-cores/,power/energy-ram/,power/energy-pkg/ ./seq.o -t 12 -n 100000000
sudo perf stat -o seq04-t12-100kk.txt -a -i -e cache-misses,cycles,instructions,cache-references,branches,cpu-clock,mem-loads,faults,task-clock,branch-misses,mem-stores,power/energy-cores/,power/energy-ram/,power/energy-pkg/ ./seq.o -t 12 -n 100000000
sudo perf stat -o seq05-t12-100kk.txt -a -i -e cache-misses,cycles,instructions,cache-references,branches,cpu-clock,mem-loads,faults,task-clock,branch-misses,mem-stores,power/energy-cores/,power/energy-ram/,power/energy-pkg/ ./seq.o -t 12 -n 100000000
sudo perf stat -o seq06-t12-100kk.txt -a -i -e cache-misses,cycles,instructions,cache-references,branches,cpu-clock,mem-loads,faults,task-clock,branch-misses,mem-stores,power/energy-cores/,power/energy-ram/,power/energy-pkg/ ./seq.o -t 12 -n 100000000
sudo perf stat -o seq07-t12-100kk.txt -a -i -e cache-misses,cycles,instructions,cache-references,branches,cpu-clock,mem-loads,faults,task-clock,branch-misses,mem-stores,power/energy-cores/,power/energy-ram/,power/energy-pkg/ ./seq.o -t 12 -n 100000000
sudo perf stat -o seq08-t12-100kk.txt -a -i -e cache-misses,cycles,instructions,cache-references,branches,cpu-clock,mem-loads,faults,task-clock,branch-misses,mem-stores,power/energy-cores/,power/energy-ram/,power/energy-pkg/ ./seq.o -t 12 -n 100000000
sudo perf stat -o seq09-t12-100kk.txt -a -i -e cache-misses,cycles,instructions,cache-references,branches,cpu-clock,mem-loads,faults,task-clock,branch-misses,mem-stores,power/energy-cores/,power/energy-ram/,power/energy-pkg/ ./seq.o -t 12 -n 100000000
sudo perf stat -o seq10-t12-100kk.txt -a -i -e cache-misses,cycles,instructions,cache-references,branches,cpu-clock,mem-loads,faults,task-clock,branch-misses,mem-stores,power/energy-cores/,power/energy-ram/,power/energy-pkg/ ./seq.o -t 12 -n 100000000

echo quarta rodada seq

sudo perf stat -o seq01-t16-100kk.txt -a -i -e cache-misses,cycles,instructions,cache-references,branches,cpu-clock,mem-loads,faults,task-clock,branch-misses,mem-stores,power/energy-cores/,power/energy-ram/,power/energy-pkg/ ./seq.o -t 16 -n 100000000
sudo perf stat -o seq02-t16-100kk.txt -a -i -e cache-misses,cycles,instructions,cache-references,branches,cpu-clock,mem-loads,faults,task-clock,branch-misses,mem-stores,power/energy-cores/,power/energy-ram/,power/energy-pkg/ ./seq.o -t 16 -n 100000000
sudo perf stat -o seq03-t16-100kk.txt -a -i -e cache-misses,cycles,instructions,cache-references,branches,cpu-clock,mem-loads,faults,task-clock,branch-misses,mem-stores,power/energy-cores/,power/energy-ram/,power/energy-pkg/ ./seq.o -t 16 -n 100000000
sudo perf stat -o seq04-t16-100kk.txt -a -i -e cache-misses,cycles,instructions,cache-references,branches,cpu-clock,mem-loads,faults,task-clock,branch-misses,mem-stores,power/energy-cores/,power/energy-ram/,power/energy-pkg/ ./seq.o -t 16 -n 100000000
sudo perf stat -o seq05-t16-100kk.txt -a -i -e cache-misses,cycles,instructions,cache-references,branches,cpu-clock,mem-loads,faults,task-clock,branch-misses,mem-stores,power/energy-cores/,power/energy-ram/,power/energy-pkg/ ./seq.o -t 16 -n 100000000
sudo perf stat -o seq06-t16-100kk.txt -a -i -e cache-misses,cycles,instructions,cache-references,branches,cpu-clock,mem-loads,faults,task-clock,branch-misses,mem-stores,power/energy-cores/,power/energy-ram/,power/energy-pkg/ ./seq.o -t 16 -n 100000000
sudo perf stat -o seq07-t16-100kk.txt -a -i -e cache-misses,cycles,instructions,cache-references,branches,cpu-clock,mem-loads,faults,task-clock,branch-misses,mem-stores,power/energy-cores/,power/energy-ram/,power/energy-pkg/ ./seq.o -t 16 -n 100000000
sudo perf stat -o seq08-t16-100kk.txt -a -i -e cache-misses,cycles,instructions,cache-references,branches,cpu-clock,mem-loads,faults,task-clock,branch-misses,mem-stores,power/energy-cores/,power/energy-ram/,power/energy-pkg/ ./seq.o -t 16 -n 100000000
sudo perf stat -o seq09-t16-100kk.txt -a -i -e cache-misses,cycles,instructions,cache-references,branches,cpu-clock,mem-loads,faults,task-clock,branch-misses,mem-stores,power/energy-cores/,power/energy-ram/,power/energy-pkg/ ./seq.o -t 16 -n 100000000
sudo perf stat -o seq10-t16-100kk.txt -a -i -e cache-misses,cycles,instructions,cache-references,branches,cpu-clock,mem-loads,faults,task-clock,branch-misses,mem-stores,power/energy-cores/,power/energy-ram/,power/energy-pkg/ ./seq.o -t 16 -n 100000000

echo quinta rodada seq

sudo perf stat -o seq01-t2-75kk.txt -a -i -e cache-misses,cycles,instructions,cache-references,branches,cpu-clock,mem-loads,faults,task-clock,branch-misses,mem-stores,power/energy-cores/,power/energy-ram/,power/energy-pkg/ ./seq.o -t 2 -n 75000000
sudo perf stat -o seq02-t2-75kk.txt -a -i -e cache-misses,cycles,instructions,cache-references,branches,cpu-clock,mem-loads,faults,task-clock,branch-misses,mem-stores,power/energy-cores/,power/energy-ram/,power/energy-pkg/ ./seq.o -t 2 -n 75000000
sudo perf stat -o seq03-t2-75kk.txt -a -i -e cache-misses,cycles,instructions,cache-references,branches,cpu-clock,mem-loads,faults,task-clock,branch-misses,mem-stores,power/energy-cores/,power/energy-ram/,power/energy-pkg/ ./seq.o -t 2 -n 75000000
sudo perf stat -o seq04-t2-75kk.txt -a -i -e cache-misses,cycles,instructions,cache-references,branches,cpu-clock,mem-loads,faults,task-clock,branch-misses,mem-stores,power/energy-cores/,power/energy-ram/,power/energy-pkg/ ./seq.o -t 2 -n 75000000
sudo perf stat -o seq05-t2-75kk.txt -a -i -e cache-misses,cycles,instructions,cache-references,branches,cpu-clock,mem-loads,faults,task-clock,branch-misses,mem-stores,power/energy-cores/,power/energy-ram/,power/energy-pkg/ ./seq.o -t 2 -n 75000000
sudo perf stat -o seq06-t2-75kk.txt -a -i -e cache-misses,cycles,instructions,cache-references,branches,cpu-clock,mem-loads,faults,task-clock,branch-misses,mem-stores,power/energy-cores/,power/energy-ram/,power/energy-pkg/ ./seq.o -t 2 -n 75000000
sudo perf stat -o seq07-t2-75kk.txt -a -i -e cache-misses,cycles,instructions,cache-references,branches,cpu-clock,mem-loads,faults,task-clock,branch-misses,mem-stores,power/energy-cores/,power/energy-ram/,power/energy-pkg/ ./seq.o -t 2 -n 75000000
sudo perf stat -o seq08-t2-75kk.txt -a -i -e cache-misses,cycles,instructions,cache-references,branches,cpu-clock,mem-loads,faults,task-clock,branch-misses,mem-stores,power/energy-cores/,power/energy-ram/,power/energy-pkg/ ./seq.o -t 2 -n 75000000
sudo perf stat -o seq09-t2-75kk.txt -a -i -e cache-misses,cycles,instructions,cache-references,branches,cpu-clock,mem-loads,faults,task-clock,branch-misses,mem-stores,power/energy-cores/,power/energy-ram/,power/energy-pkg/ ./seq.o -t 2 -n 75000000
sudo perf stat -o seq10-t2-75kk.txt -a -i -e cache-misses,cycles,instructions,cache-references,branches,cpu-clock,mem-loads,faults,task-clock,branch-misses,mem-stores,power/energy-cores/,power/energy-ram/,power/energy-pkg/ ./seq.o -t 2 -n 75000000

echo sexta rodada seq

sudo perf stat -o seq01-t4-75kk.txt -a -i -e cache-misses,cycles,instructions,cache-references,branches,cpu-clock,mem-loads,faults,task-clock,branch-misses,mem-stores,power/energy-cores/,power/energy-ram/,power/energy-pkg/ ./seq.o -t 4 -n 75000000
sudo perf stat -o seq02-t4-75kk.txt -a -i -e cache-misses,cycles,instructions,cache-references,branches,cpu-clock,mem-loads,faults,task-clock,branch-misses,mem-stores,power/energy-cores/,power/energy-ram/,power/energy-pkg/ ./seq.o -t 4 -n 75000000
sudo perf stat -o seq03-t4-75kk.txt -a -i -e cache-misses,cycles,instructions,cache-references,branches,cpu-clock,mem-loads,faults,task-clock,branch-misses,mem-stores,power/energy-cores/,power/energy-ram/,power/energy-pkg/ ./seq.o -t 4 -n 75000000
sudo perf stat -o seq04-t4-75kk.txt -a -i -e cache-misses,cycles,instructions,cache-references,branches,cpu-clock,mem-loads,faults,task-clock,branch-misses,mem-stores,power/energy-cores/,power/energy-ram/,power/energy-pkg/ ./seq.o -t 4 -n 75000000
sudo perf stat -o seq05-t4-75kk.txt -a -i -e cache-misses,cycles,instructions,cache-references,branches,cpu-clock,mem-loads,faults,task-clock,branch-misses,mem-stores,power/energy-cores/,power/energy-ram/,power/energy-pkg/ ./seq.o -t 4 -n 75000000
sudo perf stat -o seq06-t4-75kk.txt -a -i -e cache-misses,cycles,instructions,cache-references,branches,cpu-clock,mem-loads,faults,task-clock,branch-misses,mem-stores,power/energy-cores/,power/energy-ram/,power/energy-pkg/ ./seq.o -t 4 -n 75000000
sudo perf stat -o seq07-t4-75kk.txt -a -i -e cache-misses,cycles,instructions,cache-references,branches,cpu-clock,mem-loads,faults,task-clock,branch-misses,mem-stores,power/energy-cores/,power/energy-ram/,power/energy-pkg/ ./seq.o -t 4 -n 75000000
sudo perf stat -o seq08-t4-75kk.txt -a -i -e cache-misses,cycles,instructions,cache-references,branches,cpu-clock,mem-loads,faults,task-clock,branch-misses,mem-stores,power/energy-cores/,power/energy-ram/,power/energy-pkg/ ./seq.o -t 4 -n 75000000
sudo perf stat -o seq09-t4-75kk.txt -a -i -e cache-misses,cycles,instructions,cache-references,branches,cpu-clock,mem-loads,faults,task-clock,branch-misses,mem-stores,power/energy-cores/,power/energy-ram/,power/energy-pkg/ ./seq.o -t 4 -n 75000000
sudo perf stat -o seq10-t4-75kk.txt -a -i -e cache-misses,cycles,instructions,cache-references,branches,cpu-clock,mem-loads,faults,task-clock,branch-misses,mem-stores,power/energy-cores/,power/energy-ram/,power/energy-pkg/ ./seq.o -t 4 -n 75000000

echo setima rodada seq

sudo perf stat -o seq01-t8-75kk.txt -a -i -e cache-misses,cycles,instructions,cache-references,branches,cpu-clock,mem-loads,faults,task-clock,branch-misses,mem-stores,power/energy-cores/,power/energy-ram/,power/energy-pkg/ ./seq.o -t 8 -n 75000000
sudo perf stat -o seq02-t8-75kk.txt -a -i -e cache-misses,cycles,instructions,cache-references,branches,cpu-clock,mem-loads,faults,task-clock,branch-misses,mem-stores,power/energy-cores/,power/energy-ram/,power/energy-pkg/ ./seq.o -t 8 -n 75000000
sudo perf stat -o seq03-t8-75kk.txt -a -i -e cache-misses,cycles,instructions,cache-references,branches,cpu-clock,mem-loads,faults,task-clock,branch-misses,mem-stores,power/energy-cores/,power/energy-ram/,power/energy-pkg/ ./seq.o -t 8 -n 75000000
sudo perf stat -o seq04-t8-75kk.txt -a -i -e cache-misses,cycles,instructions,cache-references,branches,cpu-clock,mem-loads,faults,task-clock,branch-misses,mem-stores,power/energy-cores/,power/energy-ram/,power/energy-pkg/ ./seq.o -t 8 -n 75000000
sudo perf stat -o seq05-t8-75kk.txt -a -i -e cache-misses,cycles,instructions,cache-references,branches,cpu-clock,mem-loads,faults,task-clock,branch-misses,mem-stores,power/energy-cores/,power/energy-ram/,power/energy-pkg/ ./seq.o -t 8 -n 75000000
sudo perf stat -o seq06-t8-75kk.txt -a -i -e cache-misses,cycles,instructions,cache-references,branches,cpu-clock,mem-loads,faults,task-clock,branch-misses,mem-stores,power/energy-cores/,power/energy-ram/,power/energy-pkg/ ./seq.o -t 8 -n 75000000
sudo perf stat -o seq07-t8-75kk.txt -a -i -e cache-misses,cycles,instructions,cache-references,branches,cpu-clock,mem-loads,faults,task-clock,branch-misses,mem-stores,power/energy-cores/,power/energy-ram/,power/energy-pkg/ ./seq.o -t 8 -n 75000000
sudo perf stat -o seq08-t8-75kk.txt -a -i -e cache-misses,cycles,instructions,cache-references,branches,cpu-clock,mem-loads,faults,task-clock,branch-misses,mem-stores,power/energy-cores/,power/energy-ram/,power/energy-pkg/ ./seq.o -t 8 -n 75000000
sudo perf stat -o seq09-t8-75kk.txt -a -i -e cache-misses,cycles,instructions,cache-references,branches,cpu-clock,mem-loads,faults,task-clock,branch-misses,mem-stores,power/energy-cores/,power/energy-ram/,power/energy-pkg/ ./seq.o -t 8 -n 75000000
sudo perf stat -o seq10-t8-75kk.txt -a -i -e cache-misses,cycles,instructions,cache-references,branches,cpu-clock,mem-loads,faults,task-clock,branch-misses,mem-stores,power/energy-cores/,power/energy-ram/,power/energy-pkg/ ./seq.o -t 8 -n 75000000

echo oitava rodada seq

sudo perf stat -o seq01-t12-75kk.txt -a -i -e cache-misses,cycles,instructions,cache-references,branches,cpu-clock,mem-loads,faults,task-clock,branch-misses,mem-stores,power/energy-cores/,power/energy-ram/,power/energy-pkg/ ./seq.o -t 12 -n 75000000
sudo perf stat -o seq02-t12-75kk.txt -a -i -e cache-misses,cycles,instructions,cache-references,branches,cpu-clock,mem-loads,faults,task-clock,branch-misses,mem-stores,power/energy-cores/,power/energy-ram/,power/energy-pkg/ ./seq.o -t 12 -n 75000000
sudo perf stat -o seq03-t12-75kk.txt -a -i -e cache-misses,cycles,instructions,cache-references,branches,cpu-clock,mem-loads,faults,task-clock,branch-misses,mem-stores,power/energy-cores/,power/energy-ram/,power/energy-pkg/ ./seq.o -t 12 -n 75000000
sudo perf stat -o seq04-t12-75kk.txt -a -i -e cache-misses,cycles,instructions,cache-references,branches,cpu-clock,mem-loads,faults,task-clock,branch-misses,mem-stores,power/energy-cores/,power/energy-ram/,power/energy-pkg/ ./seq.o -t 12 -n 75000000
sudo perf stat -o seq05-t12-75kk.txt -a -i -e cache-misses,cycles,instructions,cache-references,branches,cpu-clock,mem-loads,faults,task-clock,branch-misses,mem-stores,power/energy-cores/,power/energy-ram/,power/energy-pkg/ ./seq.o -t 12 -n 75000000
sudo perf stat -o seq06-t12-75kk.txt -a -i -e cache-misses,cycles,instructions,cache-references,branches,cpu-clock,mem-loads,faults,task-clock,branch-misses,mem-stores,power/energy-cores/,power/energy-ram/,power/energy-pkg/ ./seq.o -t 12 -n 75000000
sudo perf stat -o seq07-t12-75kk.txt -a -i -e cache-misses,cycles,instructions,cache-references,branches,cpu-clock,mem-loads,faults,task-clock,branch-misses,mem-stores,power/energy-cores/,power/energy-ram/,power/energy-pkg/ ./seq.o -t 12 -n 75000000
sudo perf stat -o seq08-t12-75kk.txt -a -i -e cache-misses,cycles,instructions,cache-references,branches,cpu-clock,mem-loads,faults,task-clock,branch-misses,mem-stores,power/energy-cores/,power/energy-ram/,power/energy-pkg/ ./seq.o -t 12 -n 75000000
sudo perf stat -o seq09-t12-75kk.txt -a -i -e cache-misses,cycles,instructions,cache-references,branches,cpu-clock,mem-loads,faults,task-clock,branch-misses,mem-stores,power/energy-cores/,power/energy-ram/,power/energy-pkg/ ./seq.o -t 12 -n 75000000
sudo perf stat -o seq10-t12-75kk.txt -a -i -e cache-misses,cycles,instructions,cache-references,branches,cpu-clock,mem-loads,faults,task-clock,branch-misses,mem-stores,power/energy-cores/,power/energy-ram/,power/energy-pkg/ ./seq.o -t 12 -n 75000000

echo 9 rodada seq

sudo perf stat -o seq01-t16-75kk.txt -a -i -e cache-misses,cycles,instructions,cache-references,branches,cpu-clock,mem-loads,faults,task-clock,branch-misses,mem-stores,power/energy-cores/,power/energy-ram/,power/energy-pkg/ ./seq.o -t 16 -n 75000000
sudo perf stat -o seq02-t16-75kk.txt -a -i -e cache-misses,cycles,instructions,cache-references,branches,cpu-clock,mem-loads,faults,task-clock,branch-misses,mem-stores,power/energy-cores/,power/energy-ram/,power/energy-pkg/ ./seq.o -t 16 -n 75000000
sudo perf stat -o seq03-t16-75kk.txt -a -i -e cache-misses,cycles,instructions,cache-references,branches,cpu-clock,mem-loads,faults,task-clock,branch-misses,mem-stores,power/energy-cores/,power/energy-ram/,power/energy-pkg/ ./seq.o -t 16 -n 75000000
sudo perf stat -o seq04-t16-75kk.txt -a -i -e cache-misses,cycles,instructions,cache-references,branches,cpu-clock,mem-loads,faults,task-clock,branch-misses,mem-stores,power/energy-cores/,power/energy-ram/,power/energy-pkg/ ./seq.o -t 16 -n 75000000
sudo perf stat -o seq05-t16-75kk.txt -a -i -e cache-misses,cycles,instructions,cache-references,branches,cpu-clock,mem-loads,faults,task-clock,branch-misses,mem-stores,power/energy-cores/,power/energy-ram/,power/energy-pkg/ ./seq.o -t 16 -n 75000000
sudo perf stat -o seq06-t16-75kk.txt -a -i -e cache-misses,cycles,instructions,cache-references,branches,cpu-clock,mem-loads,faults,task-clock,branch-misses,mem-stores,power/energy-cores/,power/energy-ram/,power/energy-pkg/ ./seq.o -t 16 -n 75000000
sudo perf stat -o seq07-t16-75kk.txt -a -i -e cache-misses,cycles,instructions,cache-references,branches,cpu-clock,mem-loads,faults,task-clock,branch-misses,mem-stores,power/energy-cores/,power/energy-ram/,power/energy-pkg/ ./seq.o -t 16 -n 75000000
sudo perf stat -o seq08-t16-75kk.txt -a -i -e cache-misses,cycles,instructions,cache-references,branches,cpu-clock,mem-loads,faults,task-clock,branch-misses,mem-stores,power/energy-cores/,power/energy-ram/,power/energy-pkg/ ./seq.o -t 16 -n 75000000
sudo perf stat -o seq09-t16-75kk.txt -a -i -e cache-misses,cycles,instructions,cache-references,branches,cpu-clock,mem-loads,faults,task-clock,branch-misses,mem-stores,power/energy-cores/,power/energy-ram/,power/energy-pkg/ ./seq.o -t 16 -n 75000000
sudo perf stat -o seq10-t16-75kk.txt -a -i -e cache-misses,cycles,instructions,cache-references,branches,cpu-clock,mem-loads,faults,task-clock,branch-misses,mem-stores,power/energy-cores/,power/energy-ram/,power/energy-pkg/ ./seq.o -t 16 -n 75000000

echo 10 rodada seq

sudo perf stat -o seq01-t2-50kk.txt -a -i -e cache-misses,cycles,instructions,cache-references,branches,cpu-clock,mem-loads,faults,task-clock,branch-misses,mem-stores,power/energy-cores/,power/energy-ram/,power/energy-pkg/ ./seq.o -t 2 -n 50000000
sudo perf stat -o seq02-t2-50kk.txt -a -i -e cache-misses,cycles,instructions,cache-references,branches,cpu-clock,mem-loads,faults,task-clock,branch-misses,mem-stores,power/energy-cores/,power/energy-ram/,power/energy-pkg/ ./seq.o -t 2 -n 50000000
sudo perf stat -o seq03-t2-50kk.txt -a -i -e cache-misses,cycles,instructions,cache-references,branches,cpu-clock,mem-loads,faults,task-clock,branch-misses,mem-stores,power/energy-cores/,power/energy-ram/,power/energy-pkg/ ./seq.o -t 2 -n 50000000
sudo perf stat -o seq04-t2-50kk.txt -a -i -e cache-misses,cycles,instructions,cache-references,branches,cpu-clock,mem-loads,faults,task-clock,branch-misses,mem-stores,power/energy-cores/,power/energy-ram/,power/energy-pkg/ ./seq.o -t 2 -n 50000000
sudo perf stat -o seq05-t2-50kk.txt -a -i -e cache-misses,cycles,instructions,cache-references,branches,cpu-clock,mem-loads,faults,task-clock,branch-misses,mem-stores,power/energy-cores/,power/energy-ram/,power/energy-pkg/ ./seq.o -t 2 -n 50000000
sudo perf stat -o seq06-t2-50kk.txt -a -i -e cache-misses,cycles,instructions,cache-references,branches,cpu-clock,mem-loads,faults,task-clock,branch-misses,mem-stores,power/energy-cores/,power/energy-ram/,power/energy-pkg/ ./seq.o -t 2 -n 50000000
sudo perf stat -o seq07-t2-50kk.txt -a -i -e cache-misses,cycles,instructions,cache-references,branches,cpu-clock,mem-loads,faults,task-clock,branch-misses,mem-stores,power/energy-cores/,power/energy-ram/,power/energy-pkg/ ./seq.o -t 2 -n 50000000
sudo perf stat -o seq08-t2-50kk.txt -a -i -e cache-misses,cycles,instructions,cache-references,branches,cpu-clock,mem-loads,faults,task-clock,branch-misses,mem-stores,power/energy-cores/,power/energy-ram/,power/energy-pkg/ ./seq.o -t 2 -n 50000000
sudo perf stat -o seq09-t2-50kk.txt -a -i -e cache-misses,cycles,instructions,cache-references,branches,cpu-clock,mem-loads,faults,task-clock,branch-misses,mem-stores,power/energy-cores/,power/energy-ram/,power/energy-pkg/ ./seq.o -t 2 -n 50000000
sudo perf stat -o seq10-t2-50kk.txt -a -i -e cache-misses,cycles,instructions,cache-references,branches,cpu-clock,mem-loads,faults,task-clock,branch-misses,mem-stores,power/energy-cores/,power/energy-ram/,power/energy-pkg/ ./seq.o -t 2 -n 50000000

echo 11 rodada seq

sudo perf stat -o seq01-t4-50kk.txt -a -i -e cache-misses,cycles,instructions,cache-references,branches,cpu-clock,mem-loads,faults,task-clock,branch-misses,mem-stores,power/energy-cores/,power/energy-ram/,power/energy-pkg/ ./seq.o -t 4 -n 50000000
sudo perf stat -o seq02-t4-50kk.txt -a -i -e cache-misses,cycles,instructions,cache-references,branches,cpu-clock,mem-loads,faults,task-clock,branch-misses,mem-stores,power/energy-cores/,power/energy-ram/,power/energy-pkg/ ./seq.o -t 4 -n 50000000
sudo perf stat -o seq03-t4-50kk.txt -a -i -e cache-misses,cycles,instructions,cache-references,branches,cpu-clock,mem-loads,faults,task-clock,branch-misses,mem-stores,power/energy-cores/,power/energy-ram/,power/energy-pkg/ ./seq.o -t 4 -n 50000000
sudo perf stat -o seq04-t4-50kk.txt -a -i -e cache-misses,cycles,instructions,cache-references,branches,cpu-clock,mem-loads,faults,task-clock,branch-misses,mem-stores,power/energy-cores/,power/energy-ram/,power/energy-pkg/ ./seq.o -t 4 -n 50000000
sudo perf stat -o seq05-t4-50kk.txt -a -i -e cache-misses,cycles,instructions,cache-references,branches,cpu-clock,mem-loads,faults,task-clock,branch-misses,mem-stores,power/energy-cores/,power/energy-ram/,power/energy-pkg/ ./seq.o -t 4 -n 50000000
sudo perf stat -o seq06-t4-50kk.txt -a -i -e cache-misses,cycles,instructions,cache-references,branches,cpu-clock,mem-loads,faults,task-clock,branch-misses,mem-stores,power/energy-cores/,power/energy-ram/,power/energy-pkg/ ./seq.o -t 4 -n 50000000
sudo perf stat -o seq07-t4-50kk.txt -a -i -e cache-misses,cycles,instructions,cache-references,branches,cpu-clock,mem-loads,faults,task-clock,branch-misses,mem-stores,power/energy-cores/,power/energy-ram/,power/energy-pkg/ ./seq.o -t 4 -n 50000000
sudo perf stat -o seq08-t4-50kk.txt -a -i -e cache-misses,cycles,instructions,cache-references,branches,cpu-clock,mem-loads,faults,task-clock,branch-misses,mem-stores,power/energy-cores/,power/energy-ram/,power/energy-pkg/ ./seq.o -t 4 -n 50000000
sudo perf stat -o seq09-t4-50kk.txt -a -i -e cache-misses,cycles,instructions,cache-references,branches,cpu-clock,mem-loads,faults,task-clock,branch-misses,mem-stores,power/energy-cores/,power/energy-ram/,power/energy-pkg/ ./seq.o -t 4 -n 50000000
sudo perf stat -o seq10-t4-50kk.txt -a -i -e cache-misses,cycles,instructions,cache-references,branches,cpu-clock,mem-loads,faults,task-clock,branch-misses,mem-stores,power/energy-cores/,power/energy-ram/,power/energy-pkg/ ./seq.o -t 4 -n 50000000

echo 12 rodada seq

sudo perf stat -o seq01-t8-50kk.txt -a -i -e cache-misses,cycles,instructions,cache-references,branches,cpu-clock,mem-loads,faults,task-clock,branch-misses,mem-stores,power/energy-cores/,power/energy-ram/,power/energy-pkg/ ./seq.o -t 8 -n 50000000
sudo perf stat -o seq02-t8-50kk.txt -a -i -e cache-misses,cycles,instructions,cache-references,branches,cpu-clock,mem-loads,faults,task-clock,branch-misses,mem-stores,power/energy-cores/,power/energy-ram/,power/energy-pkg/ ./seq.o -t 8 -n 50000000
sudo perf stat -o seq03-t8-50kk.txt -a -i -e cache-misses,cycles,instructions,cache-references,branches,cpu-clock,mem-loads,faults,task-clock,branch-misses,mem-stores,power/energy-cores/,power/energy-ram/,power/energy-pkg/ ./seq.o -t 8 -n 50000000
sudo perf stat -o seq04-t8-50kk.txt -a -i -e cache-misses,cycles,instructions,cache-references,branches,cpu-clock,mem-loads,faults,task-clock,branch-misses,mem-stores,power/energy-cores/,power/energy-ram/,power/energy-pkg/ ./seq.o -t 8 -n 50000000
sudo perf stat -o seq05-t8-50kk.txt -a -i -e cache-misses,cycles,instructions,cache-references,branches,cpu-clock,mem-loads,faults,task-clock,branch-misses,mem-stores,power/energy-cores/,power/energy-ram/,power/energy-pkg/ ./seq.o -t 8 -n 50000000
sudo perf stat -o seq06-t8-50kk.txt -a -i -e cache-misses,cycles,instructions,cache-references,branches,cpu-clock,mem-loads,faults,task-clock,branch-misses,mem-stores,power/energy-cores/,power/energy-ram/,power/energy-pkg/ ./seq.o -t 8 -n 50000000
sudo perf stat -o seq07-t8-50kk.txt -a -i -e cache-misses,cycles,instructions,cache-references,branches,cpu-clock,mem-loads,faults,task-clock,branch-misses,mem-stores,power/energy-cores/,power/energy-ram/,power/energy-pkg/ ./seq.o -t 8 -n 50000000
sudo perf stat -o seq08-t8-50kk.txt -a -i -e cache-misses,cycles,instructions,cache-references,branches,cpu-clock,mem-loads,faults,task-clock,branch-misses,mem-stores,power/energy-cores/,power/energy-ram/,power/energy-pkg/ ./seq.o -t 8 -n 50000000
sudo perf stat -o seq09-t8-50kk.txt -a -i -e cache-misses,cycles,instructions,cache-references,branches,cpu-clock,mem-loads,faults,task-clock,branch-misses,mem-stores,power/energy-cores/,power/energy-ram/,power/energy-pkg/ ./seq.o -t 8 -n 50000000
sudo perf stat -o seq10-t8-50kk.txt -a -i -e cache-misses,cycles,instructions,cache-references,branches,cpu-clock,mem-loads,faults,task-clock,branch-misses,mem-stores,power/energy-cores/,power/energy-ram/,power/energy-pkg/ ./seq.o -t 8 -n 50000000

echo 13 rodada seq

sudo perf stat -o seq01-t12-50kk.txt -a -i -e cache-misses,cycles,instructions,cache-references,branches,cpu-clock,mem-loads,faults,task-clock,branch-misses,mem-stores,power/energy-cores/,power/energy-ram/,power/energy-pkg/ ./seq.o -t 12 -n 50000000
sudo perf stat -o seq02-t12-50kk.txt -a -i -e cache-misses,cycles,instructions,cache-references,branches,cpu-clock,mem-loads,faults,task-clock,branch-misses,mem-stores,power/energy-cores/,power/energy-ram/,power/energy-pkg/ ./seq.o -t 12 -n 50000000
sudo perf stat -o seq03-t12-50kk.txt -a -i -e cache-misses,cycles,instructions,cache-references,branches,cpu-clock,mem-loads,faults,task-clock,branch-misses,mem-stores,power/energy-cores/,power/energy-ram/,power/energy-pkg/ ./seq.o -t 12 -n 50000000
sudo perf stat -o seq04-t12-50kk.txt -a -i -e cache-misses,cycles,instructions,cache-references,branches,cpu-clock,mem-loads,faults,task-clock,branch-misses,mem-stores,power/energy-cores/,power/energy-ram/,power/energy-pkg/ ./seq.o -t 12 -n 50000000
sudo perf stat -o seq05-t12-50kk.txt -a -i -e cache-misses,cycles,instructions,cache-references,branches,cpu-clock,mem-loads,faults,task-clock,branch-misses,mem-stores,power/energy-cores/,power/energy-ram/,power/energy-pkg/ ./seq.o -t 12 -n 50000000
sudo perf stat -o seq06-t12-50kk.txt -a -i -e cache-misses,cycles,instructions,cache-references,branches,cpu-clock,mem-loads,faults,task-clock,branch-misses,mem-stores,power/energy-cores/,power/energy-ram/,power/energy-pkg/ ./seq.o -t 12 -n 50000000
sudo perf stat -o seq07-t12-50kk.txt -a -i -e cache-misses,cycles,instructions,cache-references,branches,cpu-clock,mem-loads,faults,task-clock,branch-misses,mem-stores,power/energy-cores/,power/energy-ram/,power/energy-pkg/ ./seq.o -t 12 -n 50000000
sudo perf stat -o seq08-t12-50kk.txt -a -i -e cache-misses,cycles,instructions,cache-references,branches,cpu-clock,mem-loads,faults,task-clock,branch-misses,mem-stores,power/energy-cores/,power/energy-ram/,power/energy-pkg/ ./seq.o -t 12 -n 50000000
sudo perf stat -o seq09-t12-50kk.txt -a -i -e cache-misses,cycles,instructions,cache-references,branches,cpu-clock,mem-loads,faults,task-clock,branch-misses,mem-stores,power/energy-cores/,power/energy-ram/,power/energy-pkg/ ./seq.o -t 12 -n 50000000
sudo perf stat -o seq10-t12-50kk.txt -a -i -e cache-misses,cycles,instructions,cache-references,branches,cpu-clock,mem-loads,faults,task-clock,branch-misses,mem-stores,power/energy-cores/,power/energy-ram/,power/energy-pkg/ ./seq.o -t 12 -n 50000000

echo 14 rodada seq

sudo perf stat -o seq01-t16-50kk.txt -a -i -e cache-misses,cycles,instructions,cache-references,branches,cpu-clock,mem-loads,faults,task-clock,branch-misses,mem-stores,power/energy-cores/,power/energy-ram/,power/energy-pkg/ ./seq.o -t 16 -n 50000000
sudo perf stat -o seq02-t16-50kk.txt -a -i -e cache-misses,cycles,instructions,cache-references,branches,cpu-clock,mem-loads,faults,task-clock,branch-misses,mem-stores,power/energy-cores/,power/energy-ram/,power/energy-pkg/ ./seq.o -t 16 -n 50000000
sudo perf stat -o seq03-t16-50kk.txt -a -i -e cache-misses,cycles,instructions,cache-references,branches,cpu-clock,mem-loads,faults,task-clock,branch-misses,mem-stores,power/energy-cores/,power/energy-ram/,power/energy-pkg/ ./seq.o -t 16 -n 50000000
sudo perf stat -o seq04-t16-50kk.txt -a -i -e cache-misses,cycles,instructions,cache-references,branches,cpu-clock,mem-loads,faults,task-clock,branch-misses,mem-stores,power/energy-cores/,power/energy-ram/,power/energy-pkg/ ./seq.o -t 16 -n 50000000
sudo perf stat -o seq05-t16-50kk.txt -a -i -e cache-misses,cycles,instructions,cache-references,branches,cpu-clock,mem-loads,faults,task-clock,branch-misses,mem-stores,power/energy-cores/,power/energy-ram/,power/energy-pkg/ ./seq.o -t 16 -n 50000000
sudo perf stat -o seq06-t16-50kk.txt -a -i -e cache-misses,cycles,instructions,cache-references,branches,cpu-clock,mem-loads,faults,task-clock,branch-misses,mem-stores,power/energy-cores/,power/energy-ram/,power/energy-pkg/ ./seq.o -t 16 -n 50000000
sudo perf stat -o seq07-t16-50kk.txt -a -i -e cache-misses,cycles,instructions,cache-references,branches,cpu-clock,mem-loads,faults,task-clock,branch-misses,mem-stores,power/energy-cores/,power/energy-ram/,power/energy-pkg/ ./seq.o -t 16 -n 50000000
sudo perf stat -o seq08-t16-50kk.txt -a -i -e cache-misses,cycles,instructions,cache-references,branches,cpu-clock,mem-loads,faults,task-clock,branch-misses,mem-stores,power/energy-cores/,power/energy-ram/,power/energy-pkg/ ./seq.o -t 16 -n 50000000
sudo perf stat -o seq09-t16-50kk.txt -a -i -e cache-misses,cycles,instructions,cache-references,branches,cpu-clock,mem-loads,faults,task-clock,branch-misses,mem-stores,power/energy-cores/,power/energy-ram/,power/energy-pkg/ ./seq.o -t 16 -n 50000000
sudo perf stat -o seq10-t16-50kk.txt -a -i -e cache-misses,cycles,instructions,cache-references,branches,cpu-clock,mem-loads,faults,task-clock,branch-misses,mem-stores,power/energy-cores/,power/energy-ram/,power/energy-pkg/ ./seq.o -t 16 -n 50000000

echo 15 rodada seq

echo comecando testes paralelo

gcc -O3 samplesort_par.c -lm -lpthread -o par.o

echo compilou paralelo

sudo perf stat -o par01-t2-100kk.txt -a -i -e cache-misses,cycles,instructions,cache-references,branches,cpu-clock,mem-loads,faults,task-clock,branch-misses,mem-stores,power/energy-cores/,power/energy-ram/,power/energy-pkg/ ./par.o -t 2 -n 100000000
sudo perf stat -o par02-t2-100kk.txt -a -i -e cache-misses,cycles,instructions,cache-references,branches,cpu-clock,mem-loads,faults,task-clock,branch-misses,mem-stores,power/energy-cores/,power/energy-ram/,power/energy-pkg/ ./par.o -t 2 -n 100000000
sudo perf stat -o par03-t2-100kk.txt -a -i -e cache-misses,cycles,instructions,cache-references,branches,cpu-clock,mem-loads,faults,task-clock,branch-misses,mem-stores,power/energy-cores/,power/energy-ram/,power/energy-pkg/ ./par.o -t 2 -n 100000000
sudo perf stat -o par04-t2-100kk.txt -a -i -e cache-misses,cycles,instructions,cache-references,branches,cpu-clock,mem-loads,faults,task-clock,branch-misses,mem-stores,power/energy-cores/,power/energy-ram/,power/energy-pkg/ ./par.o -t 2 -n 100000000
sudo perf stat -o par05-t2-100kk.txt -a -i -e cache-misses,cycles,instructions,cache-references,branches,cpu-clock,mem-loads,faults,task-clock,branch-misses,mem-stores,power/energy-cores/,power/energy-ram/,power/energy-pkg/ ./par.o -t 2 -n 100000000
sudo perf stat -o par06-t2-100kk.txt -a -i -e cache-misses,cycles,instructions,cache-references,branches,cpu-clock,mem-loads,faults,task-clock,branch-misses,mem-stores,power/energy-cores/,power/energy-ram/,power/energy-pkg/ ./par.o -t 2 -n 100000000
sudo perf stat -o par07-t2-100kk.txt -a -i -e cache-misses,cycles,instructions,cache-references,branches,cpu-clock,mem-loads,faults,task-clock,branch-misses,mem-stores,power/energy-cores/,power/energy-ram/,power/energy-pkg/ ./par.o -t 2 -n 100000000
sudo perf stat -o par08-t2-100kk.txt -a -i -e cache-misses,cycles,instructions,cache-references,branches,cpu-clock,mem-loads,faults,task-clock,branch-misses,mem-stores,power/energy-cores/,power/energy-ram/,power/energy-pkg/ ./par.o -t 2 -n 100000000
sudo perf stat -o par09-t2-100kk.txt -a -i -e cache-misses,cycles,instructions,cache-references,branches,cpu-clock,mem-loads,faults,task-clock,branch-misses,mem-stores,power/energy-cores/,power/energy-ram/,power/energy-pkg/ ./par.o -t 2 -n 100000000
sudo perf stat -o par10-t2-100kk.txt -a -i -e cache-misses,cycles,instructions,cache-references,branches,cpu-clock,mem-loads,faults,task-clock,branch-misses,mem-stores,power/energy-cores/,power/energy-ram/,power/energy-pkg/ ./par.o -t 2 -n 100000000

echo 1 rodada par

sudo perf stat -o par01-t4-100kk.txt -a -i -e cache-misses,cycles,instructions,cache-references,branches,cpu-clock,mem-loads,faults,task-clock,branch-misses,mem-stores,power/energy-cores/,power/energy-ram/,power/energy-pkg/ ./par.o -t 4 -n 100000000
sudo perf stat -o par02-t4-100kk.txt -a -i -e cache-misses,cycles,instructions,cache-references,branches,cpu-clock,mem-loads,faults,task-clock,branch-misses,mem-stores,power/energy-cores/,power/energy-ram/,power/energy-pkg/ ./par.o -t 4 -n 100000000
sudo perf stat -o par03-t4-100kk.txt -a -i -e cache-misses,cycles,instructions,cache-references,branches,cpu-clock,mem-loads,faults,task-clock,branch-misses,mem-stores,power/energy-cores/,power/energy-ram/,power/energy-pkg/ ./par.o -t 4 -n 100000000
sudo perf stat -o par04-t4-100kk.txt -a -i -e cache-misses,cycles,instructions,cache-references,branches,cpu-clock,mem-loads,faults,task-clock,branch-misses,mem-stores,power/energy-cores/,power/energy-ram/,power/energy-pkg/ ./par.o -t 4 -n 100000000
sudo perf stat -o par05-t4-100kk.txt -a -i -e cache-misses,cycles,instructions,cache-references,branches,cpu-clock,mem-loads,faults,task-clock,branch-misses,mem-stores,power/energy-cores/,power/energy-ram/,power/energy-pkg/ ./par.o -t 4 -n 100000000
sudo perf stat -o par06-t4-100kk.txt -a -i -e cache-misses,cycles,instructions,cache-references,branches,cpu-clock,mem-loads,faults,task-clock,branch-misses,mem-stores,power/energy-cores/,power/energy-ram/,power/energy-pkg/ ./par.o -t 4 -n 100000000
sudo perf stat -o par07-t4-100kk.txt -a -i -e cache-misses,cycles,instructions,cache-references,branches,cpu-clock,mem-loads,faults,task-clock,branch-misses,mem-stores,power/energy-cores/,power/energy-ram/,power/energy-pkg/ ./par.o -t 4 -n 100000000
sudo perf stat -o par08-t4-100kk.txt -a -i -e cache-misses,cycles,instructions,cache-references,branches,cpu-clock,mem-loads,faults,task-clock,branch-misses,mem-stores,power/energy-cores/,power/energy-ram/,power/energy-pkg/ ./par.o -t 4 -n 100000000
sudo perf stat -o par09-t4-100kk.txt -a -i -e cache-misses,cycles,instructions,cache-references,branches,cpu-clock,mem-loads,faults,task-clock,branch-misses,mem-stores,power/energy-cores/,power/energy-ram/,power/energy-pkg/ ./par.o -t 4 -n 100000000
sudo perf stat -o par10-t4-100kk.txt -a -i -e cache-misses,cycles,instructions,cache-references,branches,cpu-clock,mem-loads,faults,task-clock,branch-misses,mem-stores,power/energy-cores/,power/energy-ram/,power/energy-pkg/ ./par.o -t 4 -n 100000000

echo 2 rodada par

sudo perf stat -o par01-t8-100kk.txt -a -i -e cache-misses,cycles,instructions,cache-references,branches,cpu-clock,mem-loads,faults,task-clock,branch-misses,mem-stores,power/energy-cores/,power/energy-ram/,power/energy-pkg/ ./par.o -t 8 -n 100000000
sudo perf stat -o par02-t8-100kk.txt -a -i -e cache-misses,cycles,instructions,cache-references,branches,cpu-clock,mem-loads,faults,task-clock,branch-misses,mem-stores,power/energy-cores/,power/energy-ram/,power/energy-pkg/ ./par.o -t 8 -n 100000000
sudo perf stat -o par03-t8-100kk.txt -a -i -e cache-misses,cycles,instructions,cache-references,branches,cpu-clock,mem-loads,faults,task-clock,branch-misses,mem-stores,power/energy-cores/,power/energy-ram/,power/energy-pkg/ ./par.o -t 8 -n 100000000
sudo perf stat -o par04-t8-100kk.txt -a -i -e cache-misses,cycles,instructions,cache-references,branches,cpu-clock,mem-loads,faults,task-clock,branch-misses,mem-stores,power/energy-cores/,power/energy-ram/,power/energy-pkg/ ./par.o -t 8 -n 100000000
sudo perf stat -o par05-t8-100kk.txt -a -i -e cache-misses,cycles,instructions,cache-references,branches,cpu-clock,mem-loads,faults,task-clock,branch-misses,mem-stores,power/energy-cores/,power/energy-ram/,power/energy-pkg/ ./par.o -t 8 -n 100000000
sudo perf stat -o par06-t8-100kk.txt -a -i -e cache-misses,cycles,instructions,cache-references,branches,cpu-clock,mem-loads,faults,task-clock,branch-misses,mem-stores,power/energy-cores/,power/energy-ram/,power/energy-pkg/ ./par.o -t 8 -n 100000000
sudo perf stat -o par07-t8-100kk.txt -a -i -e cache-misses,cycles,instructions,cache-references,branches,cpu-clock,mem-loads,faults,task-clock,branch-misses,mem-stores,power/energy-cores/,power/energy-ram/,power/energy-pkg/ ./par.o -t 8 -n 100000000
sudo perf stat -o par08-t8-100kk.txt -a -i -e cache-misses,cycles,instructions,cache-references,branches,cpu-clock,mem-loads,faults,task-clock,branch-misses,mem-stores,power/energy-cores/,power/energy-ram/,power/energy-pkg/ ./par.o -t 8 -n 100000000
sudo perf stat -o par09-t8-100kk.txt -a -i -e cache-misses,cycles,instructions,cache-references,branches,cpu-clock,mem-loads,faults,task-clock,branch-misses,mem-stores,power/energy-cores/,power/energy-ram/,power/energy-pkg/ ./par.o -t 8 -n 100000000
sudo perf stat -o par10-t8-100kk.txt -a -i -e cache-misses,cycles,instructions,cache-references,branches,cpu-clock,mem-loads,faults,task-clock,branch-misses,mem-stores,power/energy-cores/,power/energy-ram/,power/energy-pkg/ ./par.o -t 8 -n 100000000

echo 3 rodada par

sudo perf stat -o par01-t12-100kk.txt -a -i -e cache-misses,cycles,instructions,cache-references,branches,cpu-clock,mem-loads,faults,task-clock,branch-misses,mem-stores,power/energy-cores/,power/energy-ram/,power/energy-pkg/ ./par.o -t 12 -n 100000000
sudo perf stat -o par02-t12-100kk.txt -a -i -e cache-misses,cycles,instructions,cache-references,branches,cpu-clock,mem-loads,faults,task-clock,branch-misses,mem-stores,power/energy-cores/,power/energy-ram/,power/energy-pkg/ ./par.o -t 12 -n 100000000
sudo perf stat -o par03-t12-100kk.txt -a -i -e cache-misses,cycles,instructions,cache-references,branches,cpu-clock,mem-loads,faults,task-clock,branch-misses,mem-stores,power/energy-cores/,power/energy-ram/,power/energy-pkg/ ./par.o -t 12 -n 100000000
sudo perf stat -o par04-t12-100kk.txt -a -i -e cache-misses,cycles,instructions,cache-references,branches,cpu-clock,mem-loads,faults,task-clock,branch-misses,mem-stores,power/energy-cores/,power/energy-ram/,power/energy-pkg/ ./par.o -t 12 -n 100000000
sudo perf stat -o par05-t12-100kk.txt -a -i -e cache-misses,cycles,instructions,cache-references,branches,cpu-clock,mem-loads,faults,task-clock,branch-misses,mem-stores,power/energy-cores/,power/energy-ram/,power/energy-pkg/ ./par.o -t 12 -n 100000000
sudo perf stat -o par06-t12-100kk.txt -a -i -e cache-misses,cycles,instructions,cache-references,branches,cpu-clock,mem-loads,faults,task-clock,branch-misses,mem-stores,power/energy-cores/,power/energy-ram/,power/energy-pkg/ ./par.o -t 12 -n 100000000
sudo perf stat -o par07-t12-100kk.txt -a -i -e cache-misses,cycles,instructions,cache-references,branches,cpu-clock,mem-loads,faults,task-clock,branch-misses,mem-stores,power/energy-cores/,power/energy-ram/,power/energy-pkg/ ./par.o -t 12 -n 100000000
sudo perf stat -o par08-t12-100kk.txt -a -i -e cache-misses,cycles,instructions,cache-references,branches,cpu-clock,mem-loads,faults,task-clock,branch-misses,mem-stores,power/energy-cores/,power/energy-ram/,power/energy-pkg/ ./par.o -t 12 -n 100000000
sudo perf stat -o par09-t12-100kk.txt -a -i -e cache-misses,cycles,instructions,cache-references,branches,cpu-clock,mem-loads,faults,task-clock,branch-misses,mem-stores,power/energy-cores/,power/energy-ram/,power/energy-pkg/ ./par.o -t 12 -n 100000000
sudo perf stat -o par10-t12-100kk.txt -a -i -e cache-misses,cycles,instructions,cache-references,branches,cpu-clock,mem-loads,faults,task-clock,branch-misses,mem-stores,power/energy-cores/,power/energy-ram/,power/energy-pkg/ ./par.o -t 12 -n 100000000

echo 4 rodada par

sudo perf stat -o par01-t16-100kk.txt -a -i -e cache-misses,cycles,instructions,cache-references,branches,cpu-clock,mem-loads,faults,task-clock,branch-misses,mem-stores,power/energy-cores/,power/energy-ram/,power/energy-pkg/ ./par.o -t 16 -n 100000000
sudo perf stat -o par02-t16-100kk.txt -a -i -e cache-misses,cycles,instructions,cache-references,branches,cpu-clock,mem-loads,faults,task-clock,branch-misses,mem-stores,power/energy-cores/,power/energy-ram/,power/energy-pkg/ ./par.o -t 16 -n 100000000
sudo perf stat -o par03-t16-100kk.txt -a -i -e cache-misses,cycles,instructions,cache-references,branches,cpu-clock,mem-loads,faults,task-clock,branch-misses,mem-stores,power/energy-cores/,power/energy-ram/,power/energy-pkg/ ./par.o -t 16 -n 100000000
sudo perf stat -o par04-t16-100kk.txt -a -i -e cache-misses,cycles,instructions,cache-references,branches,cpu-clock,mem-loads,faults,task-clock,branch-misses,mem-stores,power/energy-cores/,power/energy-ram/,power/energy-pkg/ ./par.o -t 16 -n 100000000
sudo perf stat -o par05-t16-100kk.txt -a -i -e cache-misses,cycles,instructions,cache-references,branches,cpu-clock,mem-loads,faults,task-clock,branch-misses,mem-stores,power/energy-cores/,power/energy-ram/,power/energy-pkg/ ./par.o -t 16 -n 100000000
sudo perf stat -o par06-t16-100kk.txt -a -i -e cache-misses,cycles,instructions,cache-references,branches,cpu-clock,mem-loads,faults,task-clock,branch-misses,mem-stores,power/energy-cores/,power/energy-ram/,power/energy-pkg/ ./par.o -t 16 -n 100000000
sudo perf stat -o par07-t16-100kk.txt -a -i -e cache-misses,cycles,instructions,cache-references,branches,cpu-clock,mem-loads,faults,task-clock,branch-misses,mem-stores,power/energy-cores/,power/energy-ram/,power/energy-pkg/ ./par.o -t 16 -n 100000000
sudo perf stat -o par08-t16-100kk.txt -a -i -e cache-misses,cycles,instructions,cache-references,branches,cpu-clock,mem-loads,faults,task-clock,branch-misses,mem-stores,power/energy-cores/,power/energy-ram/,power/energy-pkg/ ./par.o -t 16 -n 100000000
sudo perf stat -o par09-t16-100kk.txt -a -i -e cache-misses,cycles,instructions,cache-references,branches,cpu-clock,mem-loads,faults,task-clock,branch-misses,mem-stores,power/energy-cores/,power/energy-ram/,power/energy-pkg/ ./par.o -t 16 -n 100000000
sudo perf stat -o par10-t16-100kk.txt -a -i -e cache-misses,cycles,instructions,cache-references,branches,cpu-clock,mem-loads,faults,task-clock,branch-misses,mem-stores,power/energy-cores/,power/energy-ram/,power/energy-pkg/ ./par.o -t 16 -n 100000000

echo 5 rodada par

sudo perf stat -o par01-t2-75kk.txt -a -i -e cache-misses,cycles,instructions,cache-references,branches,cpu-clock,mem-loads,faults,task-clock,branch-misses,mem-stores,power/energy-cores/,power/energy-ram/,power/energy-pkg/ ./par.o -t 2 -n 75000000
sudo perf stat -o par02-t2-75kk.txt -a -i -e cache-misses,cycles,instructions,cache-references,branches,cpu-clock,mem-loads,faults,task-clock,branch-misses,mem-stores,power/energy-cores/,power/energy-ram/,power/energy-pkg/ ./par.o -t 2 -n 75000000
sudo perf stat -o par03-t2-75kk.txt -a -i -e cache-misses,cycles,instructions,cache-references,branches,cpu-clock,mem-loads,faults,task-clock,branch-misses,mem-stores,power/energy-cores/,power/energy-ram/,power/energy-pkg/ ./par.o -t 2 -n 75000000
sudo perf stat -o par04-t2-75kk.txt -a -i -e cache-misses,cycles,instructions,cache-references,branches,cpu-clock,mem-loads,faults,task-clock,branch-misses,mem-stores,power/energy-cores/,power/energy-ram/,power/energy-pkg/ ./par.o -t 2 -n 75000000
sudo perf stat -o par05-t2-75kk.txt -a -i -e cache-misses,cycles,instructions,cache-references,branches,cpu-clock,mem-loads,faults,task-clock,branch-misses,mem-stores,power/energy-cores/,power/energy-ram/,power/energy-pkg/ ./par.o -t 2 -n 75000000
sudo perf stat -o par06-t2-75kk.txt -a -i -e cache-misses,cycles,instructions,cache-references,branches,cpu-clock,mem-loads,faults,task-clock,branch-misses,mem-stores,power/energy-cores/,power/energy-ram/,power/energy-pkg/ ./par.o -t 2 -n 75000000
sudo perf stat -o par07-t2-75kk.txt -a -i -e cache-misses,cycles,instructions,cache-references,branches,cpu-clock,mem-loads,faults,task-clock,branch-misses,mem-stores,power/energy-cores/,power/energy-ram/,power/energy-pkg/ ./par.o -t 2 -n 75000000
sudo perf stat -o par08-t2-75kk.txt -a -i -e cache-misses,cycles,instructions,cache-references,branches,cpu-clock,mem-loads,faults,task-clock,branch-misses,mem-stores,power/energy-cores/,power/energy-ram/,power/energy-pkg/ ./par.o -t 2 -n 75000000
sudo perf stat -o par09-t2-75kk.txt -a -i -e cache-misses,cycles,instructions,cache-references,branches,cpu-clock,mem-loads,faults,task-clock,branch-misses,mem-stores,power/energy-cores/,power/energy-ram/,power/energy-pkg/ ./par.o -t 2 -n 75000000
sudo perf stat -o par10-t2-75kk.txt -a -i -e cache-misses,cycles,instructions,cache-references,branches,cpu-clock,mem-loads,faults,task-clock,branch-misses,mem-stores,power/energy-cores/,power/energy-ram/,power/energy-pkg/ ./par.o -t 2 -n 75000000

echo 6 rodada par

sudo perf stat -o par01-t4-75kk.txt -a -i -e cache-misses,cycles,instructions,cache-references,branches,cpu-clock,mem-loads,faults,task-clock,branch-misses,mem-stores,power/energy-cores/,power/energy-ram/,power/energy-pkg/ ./par.o -t 4 -n 75000000
sudo perf stat -o par02-t4-75kk.txt -a -i -e cache-misses,cycles,instructions,cache-references,branches,cpu-clock,mem-loads,faults,task-clock,branch-misses,mem-stores,power/energy-cores/,power/energy-ram/,power/energy-pkg/ ./par.o -t 4 -n 75000000
sudo perf stat -o par03-t4-75kk.txt -a -i -e cache-misses,cycles,instructions,cache-references,branches,cpu-clock,mem-loads,faults,task-clock,branch-misses,mem-stores,power/energy-cores/,power/energy-ram/,power/energy-pkg/ ./par.o -t 4 -n 75000000
sudo perf stat -o par04-t4-75kk.txt -a -i -e cache-misses,cycles,instructions,cache-references,branches,cpu-clock,mem-loads,faults,task-clock,branch-misses,mem-stores,power/energy-cores/,power/energy-ram/,power/energy-pkg/ ./par.o -t 4 -n 75000000
sudo perf stat -o par05-t4-75kk.txt -a -i -e cache-misses,cycles,instructions,cache-references,branches,cpu-clock,mem-loads,faults,task-clock,branch-misses,mem-stores,power/energy-cores/,power/energy-ram/,power/energy-pkg/ ./par.o -t 4 -n 75000000
sudo perf stat -o par06-t4-75kk.txt -a -i -e cache-misses,cycles,instructions,cache-references,branches,cpu-clock,mem-loads,faults,task-clock,branch-misses,mem-stores,power/energy-cores/,power/energy-ram/,power/energy-pkg/ ./par.o -t 4 -n 75000000
sudo perf stat -o par07-t4-75kk.txt -a -i -e cache-misses,cycles,instructions,cache-references,branches,cpu-clock,mem-loads,faults,task-clock,branch-misses,mem-stores,power/energy-cores/,power/energy-ram/,power/energy-pkg/ ./par.o -t 4 -n 75000000
sudo perf stat -o par08-t4-75kk.txt -a -i -e cache-misses,cycles,instructions,cache-references,branches,cpu-clock,mem-loads,faults,task-clock,branch-misses,mem-stores,power/energy-cores/,power/energy-ram/,power/energy-pkg/ ./par.o -t 4 -n 75000000
sudo perf stat -o par09-t4-75kk.txt -a -i -e cache-misses,cycles,instructions,cache-references,branches,cpu-clock,mem-loads,faults,task-clock,branch-misses,mem-stores,power/energy-cores/,power/energy-ram/,power/energy-pkg/ ./par.o -t 4 -n 75000000
sudo perf stat -o par10-t4-75kk.txt -a -i -e cache-misses,cycles,instructions,cache-references,branches,cpu-clock,mem-loads,faults,task-clock,branch-misses,mem-stores,power/energy-cores/,power/energy-ram/,power/energy-pkg/ ./par.o -t 4 -n 75000000

echo 7 rodada par
sudo perf stat -o par01-t8-75kk.txt -a -i -e cache-misses,cycles,instructions,cache-references,branches,cpu-clock,mem-loads,faults,task-clock,branch-misses,mem-stores,power/energy-cores/,power/energy-ram/,power/energy-pkg/ ./par.o -t 8 -n 75000000
sudo perf stat -o par02-t8-75kk.txt -a -i -e cache-misses,cycles,instructions,cache-references,branches,cpu-clock,mem-loads,faults,task-clock,branch-misses,mem-stores,power/energy-cores/,power/energy-ram/,power/energy-pkg/ ./par.o -t 8 -n 75000000
sudo perf stat -o par03-t8-75kk.txt -a -i -e cache-misses,cycles,instructions,cache-references,branches,cpu-clock,mem-loads,faults,task-clock,branch-misses,mem-stores,power/energy-cores/,power/energy-ram/,power/energy-pkg/ ./par.o -t 8 -n 75000000
sudo perf stat -o par04-t8-75kk.txt -a -i -e cache-misses,cycles,instructions,cache-references,branches,cpu-clock,mem-loads,faults,task-clock,branch-misses,mem-stores,power/energy-cores/,power/energy-ram/,power/energy-pkg/ ./par.o -t 8 -n 75000000
sudo perf stat -o par05-t8-75kk.txt -a -i -e cache-misses,cycles,instructions,cache-references,branches,cpu-clock,mem-loads,faults,task-clock,branch-misses,mem-stores,power/energy-cores/,power/energy-ram/,power/energy-pkg/ ./par.o -t 8 -n 75000000
sudo perf stat -o par06-t8-75kk.txt -a -i -e cache-misses,cycles,instructions,cache-references,branches,cpu-clock,mem-loads,faults,task-clock,branch-misses,mem-stores,power/energy-cores/,power/energy-ram/,power/energy-pkg/ ./par.o -t 8 -n 75000000
sudo perf stat -o par07-t8-75kk.txt -a -i -e cache-misses,cycles,instructions,cache-references,branches,cpu-clock,mem-loads,faults,task-clock,branch-misses,mem-stores,power/energy-cores/,power/energy-ram/,power/energy-pkg/ ./par.o -t 8 -n 75000000
sudo perf stat -o par08-t8-75kk.txt -a -i -e cache-misses,cycles,instructions,cache-references,branches,cpu-clock,mem-loads,faults,task-clock,branch-misses,mem-stores,power/energy-cores/,power/energy-ram/,power/energy-pkg/ ./par.o -t 8 -n 75000000
sudo perf stat -o par09-t8-75kk.txt -a -i -e cache-misses,cycles,instructions,cache-references,branches,cpu-clock,mem-loads,faults,task-clock,branch-misses,mem-stores,power/energy-cores/,power/energy-ram/,power/energy-pkg/ ./par.o -t 8 -n 75000000
sudo perf stat -o par10-t8-75kk.txt -a -i -e cache-misses,cycles,instructions,cache-references,branches,cpu-clock,mem-loads,faults,task-clock,branch-misses,mem-stores,power/energy-cores/,power/energy-ram/,power/energy-pkg/ ./par.o -t 8 -n 75000000

echo 8 rodada par

sudo perf stat -o par01-t12-75kk.txt -a -i -e cache-misses,cycles,instructions,cache-references,branches,cpu-clock,mem-loads,faults,task-clock,branch-misses,mem-stores,power/energy-cores/,power/energy-ram/,power/energy-pkg/ ./par.o -t 12 -n 75000000
sudo perf stat -o par02-t12-75kk.txt -a -i -e cache-misses,cycles,instructions,cache-references,branches,cpu-clock,mem-loads,faults,task-clock,branch-misses,mem-stores,power/energy-cores/,power/energy-ram/,power/energy-pkg/ ./par.o -t 12 -n 75000000
sudo perf stat -o par03-t12-75kk.txt -a -i -e cache-misses,cycles,instructions,cache-references,branches,cpu-clock,mem-loads,faults,task-clock,branch-misses,mem-stores,power/energy-cores/,power/energy-ram/,power/energy-pkg/ ./par.o -t 12 -n 75000000
sudo perf stat -o par04-t12-75kk.txt -a -i -e cache-misses,cycles,instructions,cache-references,branches,cpu-clock,mem-loads,faults,task-clock,branch-misses,mem-stores,power/energy-cores/,power/energy-ram/,power/energy-pkg/ ./par.o -t 12 -n 75000000
sudo perf stat -o par05-t12-75kk.txt -a -i -e cache-misses,cycles,instructions,cache-references,branches,cpu-clock,mem-loads,faults,task-clock,branch-misses,mem-stores,power/energy-cores/,power/energy-ram/,power/energy-pkg/ ./par.o -t 12 -n 75000000
sudo perf stat -o par06-t12-75kk.txt -a -i -e cache-misses,cycles,instructions,cache-references,branches,cpu-clock,mem-loads,faults,task-clock,branch-misses,mem-stores,power/energy-cores/,power/energy-ram/,power/energy-pkg/ ./par.o -t 12 -n 75000000
sudo perf stat -o par07-t12-75kk.txt -a -i -e cache-misses,cycles,instructions,cache-references,branches,cpu-clock,mem-loads,faults,task-clock,branch-misses,mem-stores,power/energy-cores/,power/energy-ram/,power/energy-pkg/ ./par.o -t 12 -n 75000000
sudo perf stat -o par08-t12-75kk.txt -a -i -e cache-misses,cycles,instructions,cache-references,branches,cpu-clock,mem-loads,faults,task-clock,branch-misses,mem-stores,power/energy-cores/,power/energy-ram/,power/energy-pkg/ ./par.o -t 12 -n 75000000
sudo perf stat -o par09-t12-75kk.txt -a -i -e cache-misses,cycles,instructions,cache-references,branches,cpu-clock,mem-loads,faults,task-clock,branch-misses,mem-stores,power/energy-cores/,power/energy-ram/,power/energy-pkg/ ./par.o -t 12 -n 75000000
sudo perf stat -o par10-t12-75kk.txt -a -i -e cache-misses,cycles,instructions,cache-references,branches,cpu-clock,mem-loads,faults,task-clock,branch-misses,mem-stores,power/energy-cores/,power/energy-ram/,power/energy-pkg/ ./par.o -t 12 -n 75000000

echo 9 rodada par

sudo perf stat -o par01-t16-75kk.txt -a -i -e cache-misses,cycles,instructions,cache-references,branches,cpu-clock,mem-loads,faults,task-clock,branch-misses,mem-stores,power/energy-cores/,power/energy-ram/,power/energy-pkg/ ./par.o -t 16 -n 75000000
sudo perf stat -o par02-t16-75kk.txt -a -i -e cache-misses,cycles,instructions,cache-references,branches,cpu-clock,mem-loads,faults,task-clock,branch-misses,mem-stores,power/energy-cores/,power/energy-ram/,power/energy-pkg/ ./par.o -t 16 -n 75000000
sudo perf stat -o par03-t16-75kk.txt -a -i -e cache-misses,cycles,instructions,cache-references,branches,cpu-clock,mem-loads,faults,task-clock,branch-misses,mem-stores,power/energy-cores/,power/energy-ram/,power/energy-pkg/ ./par.o -t 16 -n 75000000
sudo perf stat -o par04-t16-75kk.txt -a -i -e cache-misses,cycles,instructions,cache-references,branches,cpu-clock,mem-loads,faults,task-clock,branch-misses,mem-stores,power/energy-cores/,power/energy-ram/,power/energy-pkg/ ./par.o -t 16 -n 75000000
sudo perf stat -o par05-t16-75kk.txt -a -i -e cache-misses,cycles,instructions,cache-references,branches,cpu-clock,mem-loads,faults,task-clock,branch-misses,mem-stores,power/energy-cores/,power/energy-ram/,power/energy-pkg/ ./par.o -t 16 -n 75000000
sudo perf stat -o par06-t16-75kk.txt -a -i -e cache-misses,cycles,instructions,cache-references,branches,cpu-clock,mem-loads,faults,task-clock,branch-misses,mem-stores,power/energy-cores/,power/energy-ram/,power/energy-pkg/ ./par.o -t 16 -n 75000000
sudo perf stat -o par07-t16-75kk.txt -a -i -e cache-misses,cycles,instructions,cache-references,branches,cpu-clock,mem-loads,faults,task-clock,branch-misses,mem-stores,power/energy-cores/,power/energy-ram/,power/energy-pkg/ ./par.o -t 16 -n 75000000
sudo perf stat -o par08-t16-75kk.txt -a -i -e cache-misses,cycles,instructions,cache-references,branches,cpu-clock,mem-loads,faults,task-clock,branch-misses,mem-stores,power/energy-cores/,power/energy-ram/,power/energy-pkg/ ./par.o -t 16 -n 75000000
sudo perf stat -o par09-t16-75kk.txt -a -i -e cache-misses,cycles,instructions,cache-references,branches,cpu-clock,mem-loads,faults,task-clock,branch-misses,mem-stores,power/energy-cores/,power/energy-ram/,power/energy-pkg/ ./par.o -t 16 -n 75000000
sudo perf stat -o par10-t16-75kk.txt -a -i -e cache-misses,cycles,instructions,cache-references,branches,cpu-clock,mem-loads,faults,task-clock,branch-misses,mem-stores,power/energy-cores/,power/energy-ram/,power/energy-pkg/ ./par.o -t 16 -n 75000000

echo 10 rodada par

sudo perf stat -o par01-t2-50kk.txt -a -i -e cache-misses,cycles,instructions,cache-references,branches,cpu-clock,mem-loads,faults,task-clock,branch-misses,mem-stores,power/energy-cores/,power/energy-ram/,power/energy-pkg/ ./par.o -t 2 -n 50000000
sudo perf stat -o par02-t2-50kk.txt -a -i -e cache-misses,cycles,instructions,cache-references,branches,cpu-clock,mem-loads,faults,task-clock,branch-misses,mem-stores,power/energy-cores/,power/energy-ram/,power/energy-pkg/ ./par.o -t 2 -n 50000000
sudo perf stat -o par03-t2-50kk.txt -a -i -e cache-misses,cycles,instructions,cache-references,branches,cpu-clock,mem-loads,faults,task-clock,branch-misses,mem-stores,power/energy-cores/,power/energy-ram/,power/energy-pkg/ ./par.o -t 2 -n 50000000
sudo perf stat -o par04-t2-50kk.txt -a -i -e cache-misses,cycles,instructions,cache-references,branches,cpu-clock,mem-loads,faults,task-clock,branch-misses,mem-stores,power/energy-cores/,power/energy-ram/,power/energy-pkg/ ./par.o -t 2 -n 50000000
sudo perf stat -o par05-t2-50kk.txt -a -i -e cache-misses,cycles,instructions,cache-references,branches,cpu-clock,mem-loads,faults,task-clock,branch-misses,mem-stores,power/energy-cores/,power/energy-ram/,power/energy-pkg/ ./par.o -t 2 -n 50000000
sudo perf stat -o par06-t2-50kk.txt -a -i -e cache-misses,cycles,instructions,cache-references,branches,cpu-clock,mem-loads,faults,task-clock,branch-misses,mem-stores,power/energy-cores/,power/energy-ram/,power/energy-pkg/ ./par.o -t 2 -n 50000000
sudo perf stat -o par07-t2-50kk.txt -a -i -e cache-misses,cycles,instructions,cache-references,branches,cpu-clock,mem-loads,faults,task-clock,branch-misses,mem-stores,power/energy-cores/,power/energy-ram/,power/energy-pkg/ ./par.o -t 2 -n 50000000
sudo perf stat -o par08-t2-50kk.txt -a -i -e cache-misses,cycles,instructions,cache-references,branches,cpu-clock,mem-loads,faults,task-clock,branch-misses,mem-stores,power/energy-cores/,power/energy-ram/,power/energy-pkg/ ./par.o -t 2 -n 50000000
sudo perf stat -o par09-t2-50kk.txt -a -i -e cache-misses,cycles,instructions,cache-references,branches,cpu-clock,mem-loads,faults,task-clock,branch-misses,mem-stores,power/energy-cores/,power/energy-ram/,power/energy-pkg/ ./par.o -t 2 -n 50000000
sudo perf stat -o par10-t2-50kk.txt -a -i -e cache-misses,cycles,instructions,cache-references,branches,cpu-clock,mem-loads,faults,task-clock,branch-misses,mem-stores,power/energy-cores/,power/energy-ram/,power/energy-pkg/ ./par.o -t 2 -n 50000000

echo 11 rodada par

sudo perf stat -o par01-t4-50kk.txt -a -i -e cache-misses,cycles,instructions,cache-references,branches,cpu-clock,mem-loads,faults,task-clock,branch-misses,mem-stores,power/energy-cores/,power/energy-ram/,power/energy-pkg/ ./par.o -t 4 -n 50000000
sudo perf stat -o par02-t4-50kk.txt -a -i -e cache-misses,cycles,instructions,cache-references,branches,cpu-clock,mem-loads,faults,task-clock,branch-misses,mem-stores,power/energy-cores/,power/energy-ram/,power/energy-pkg/ ./par.o -t 4 -n 50000000
sudo perf stat -o par03-t4-50kk.txt -a -i -e cache-misses,cycles,instructions,cache-references,branches,cpu-clock,mem-loads,faults,task-clock,branch-misses,mem-stores,power/energy-cores/,power/energy-ram/,power/energy-pkg/ ./par.o -t 4 -n 50000000
sudo perf stat -o par04-t4-50kk.txt -a -i -e cache-misses,cycles,instructions,cache-references,branches,cpu-clock,mem-loads,faults,task-clock,branch-misses,mem-stores,power/energy-cores/,power/energy-ram/,power/energy-pkg/ ./par.o -t 4 -n 50000000
sudo perf stat -o par05-t4-50kk.txt -a -i -e cache-misses,cycles,instructions,cache-references,branches,cpu-clock,mem-loads,faults,task-clock,branch-misses,mem-stores,power/energy-cores/,power/energy-ram/,power/energy-pkg/ ./par.o -t 4 -n 50000000
sudo perf stat -o par06-t4-50kk.txt -a -i -e cache-misses,cycles,instructions,cache-references,branches,cpu-clock,mem-loads,faults,task-clock,branch-misses,mem-stores,power/energy-cores/,power/energy-ram/,power/energy-pkg/ ./par.o -t 4 -n 50000000
sudo perf stat -o par07-t4-50kk.txt -a -i -e cache-misses,cycles,instructions,cache-references,branches,cpu-clock,mem-loads,faults,task-clock,branch-misses,mem-stores,power/energy-cores/,power/energy-ram/,power/energy-pkg/ ./par.o -t 4 -n 50000000
sudo perf stat -o par08-t4-50kk.txt -a -i -e cache-misses,cycles,instructions,cache-references,branches,cpu-clock,mem-loads,faults,task-clock,branch-misses,mem-stores,power/energy-cores/,power/energy-ram/,power/energy-pkg/ ./par.o -t 4 -n 50000000
sudo perf stat -o par09-t4-50kk.txt -a -i -e cache-misses,cycles,instructions,cache-references,branches,cpu-clock,mem-loads,faults,task-clock,branch-misses,mem-stores,power/energy-cores/,power/energy-ram/,power/energy-pkg/ ./par.o -t 4 -n 50000000
sudo perf stat -o par10-t4-50kk.txt -a -i -e cache-misses,cycles,instructions,cache-references,branches,cpu-clock,mem-loads,faults,task-clock,branch-misses,mem-stores,power/energy-cores/,power/energy-ram/,power/energy-pkg/ ./par.o -t 4 -n 50000000

echo 12 rodada par

sudo perf stat -o par01-t8-50kk.txt -a -i -e cache-misses,cycles,instructions,cache-references,branches,cpu-clock,mem-loads,faults,task-clock,branch-misses,mem-stores,power/energy-cores/,power/energy-ram/,power/energy-pkg/ ./par.o -t 8 -n 50000000
sudo perf stat -o par02-t8-50kk.txt -a -i -e cache-misses,cycles,instructions,cache-references,branches,cpu-clock,mem-loads,faults,task-clock,branch-misses,mem-stores,power/energy-cores/,power/energy-ram/,power/energy-pkg/ ./par.o -t 8 -n 50000000
sudo perf stat -o par03-t8-50kk.txt -a -i -e cache-misses,cycles,instructions,cache-references,branches,cpu-clock,mem-loads,faults,task-clock,branch-misses,mem-stores,power/energy-cores/,power/energy-ram/,power/energy-pkg/ ./par.o -t 8 -n 50000000
sudo perf stat -o par04-t8-50kk.txt -a -i -e cache-misses,cycles,instructions,cache-references,branches,cpu-clock,mem-loads,faults,task-clock,branch-misses,mem-stores,power/energy-cores/,power/energy-ram/,power/energy-pkg/ ./par.o -t 8 -n 50000000
sudo perf stat -o par05-t8-50kk.txt -a -i -e cache-misses,cycles,instructions,cache-references,branches,cpu-clock,mem-loads,faults,task-clock,branch-misses,mem-stores,power/energy-cores/,power/energy-ram/,power/energy-pkg/ ./par.o -t 8 -n 50000000
sudo perf stat -o par06-t8-50kk.txt -a -i -e cache-misses,cycles,instructions,cache-references,branches,cpu-clock,mem-loads,faults,task-clock,branch-misses,mem-stores,power/energy-cores/,power/energy-ram/,power/energy-pkg/ ./par.o -t 8 -n 50000000
sudo perf stat -o par07-t8-50kk.txt -a -i -e cache-misses,cycles,instructions,cache-references,branches,cpu-clock,mem-loads,faults,task-clock,branch-misses,mem-stores,power/energy-cores/,power/energy-ram/,power/energy-pkg/ ./par.o -t 8 -n 50000000
sudo perf stat -o par08-t8-50kk.txt -a -i -e cache-misses,cycles,instructions,cache-references,branches,cpu-clock,mem-loads,faults,task-clock,branch-misses,mem-stores,power/energy-cores/,power/energy-ram/,power/energy-pkg/ ./par.o -t 8 -n 50000000
sudo perf stat -o par09-t8-50kk.txt -a -i -e cache-misses,cycles,instructions,cache-references,branches,cpu-clock,mem-loads,faults,task-clock,branch-misses,mem-stores,power/energy-cores/,power/energy-ram/,power/energy-pkg/ ./par.o -t 8 -n 50000000
sudo perf stat -o par10-t8-50kk.txt -a -i -e cache-misses,cycles,instructions,cache-references,branches,cpu-clock,mem-loads,faults,task-clock,branch-misses,mem-stores,power/energy-cores/,power/energy-ram/,power/energy-pkg/ ./par.o -t 8 -n 50000000

echo 13 rodada par

sudo perf stat -o par01-t12-50kk.txt -a -i -e cache-misses,cycles,instructions,cache-references,branches,cpu-clock,mem-loads,faults,task-clock,branch-misses,mem-stores,power/energy-cores/,power/energy-ram/,power/energy-pkg/ ./par.o -t 12 -n 50000000
sudo perf stat -o par02-t12-50kk.txt -a -i -e cache-misses,cycles,instructions,cache-references,branches,cpu-clock,mem-loads,faults,task-clock,branch-misses,mem-stores,power/energy-cores/,power/energy-ram/,power/energy-pkg/ ./par.o -t 12 -n 50000000
sudo perf stat -o par03-t12-50kk.txt -a -i -e cache-misses,cycles,instructions,cache-references,branches,cpu-clock,mem-loads,faults,task-clock,branch-misses,mem-stores,power/energy-cores/,power/energy-ram/,power/energy-pkg/ ./par.o -t 12 -n 50000000
sudo perf stat -o par04-t12-50kk.txt -a -i -e cache-misses,cycles,instructions,cache-references,branches,cpu-clock,mem-loads,faults,task-clock,branch-misses,mem-stores,power/energy-cores/,power/energy-ram/,power/energy-pkg/ ./par.o -t 12 -n 50000000
sudo perf stat -o par05-t12-50kk.txt -a -i -e cache-misses,cycles,instructions,cache-references,branches,cpu-clock,mem-loads,faults,task-clock,branch-misses,mem-stores,power/energy-cores/,power/energy-ram/,power/energy-pkg/ ./par.o -t 12 -n 50000000
sudo perf stat -o par06-t12-50kk.txt -a -i -e cache-misses,cycles,instructions,cache-references,branches,cpu-clock,mem-loads,faults,task-clock,branch-misses,mem-stores,power/energy-cores/,power/energy-ram/,power/energy-pkg/ ./par.o -t 12 -n 50000000
sudo perf stat -o par07-t12-50kk.txt -a -i -e cache-misses,cycles,instructions,cache-references,branches,cpu-clock,mem-loads,faults,task-clock,branch-misses,mem-stores,power/energy-cores/,power/energy-ram/,power/energy-pkg/ ./par.o -t 12 -n 50000000
sudo perf stat -o par08-t12-50kk.txt -a -i -e cache-misses,cycles,instructions,cache-references,branches,cpu-clock,mem-loads,faults,task-clock,branch-misses,mem-stores,power/energy-cores/,power/energy-ram/,power/energy-pkg/ ./par.o -t 12 -n 50000000
sudo perf stat -o par09-t12-50kk.txt -a -i -e cache-misses,cycles,instructions,cache-references,branches,cpu-clock,mem-loads,faults,task-clock,branch-misses,mem-stores,power/energy-cores/,power/energy-ram/,power/energy-pkg/ ./par.o -t 12 -n 50000000
sudo perf stat -o par10-t12-50kk.txt -a -i -e cache-misses,cycles,instructions,cache-references,branches,cpu-clock,mem-loads,faults,task-clock,branch-misses,mem-stores,power/energy-cores/,power/energy-ram/,power/energy-pkg/ ./par.o -t 12 -n 50000000

echo 14 rodada par

sudo perf stat -o par01-t16-50kk.txt -a -i -e cache-misses,cycles,instructions,cache-references,branches,cpu-clock,mem-loads,faults,task-clock,branch-misses,mem-stores,power/energy-cores/,power/energy-ram/,power/energy-pkg/ ./par.o -t 16 -n 50000000
sudo perf stat -o par02-t16-50kk.txt -a -i -e cache-misses,cycles,instructions,cache-references,branches,cpu-clock,mem-loads,faults,task-clock,branch-misses,mem-stores,power/energy-cores/,power/energy-ram/,power/energy-pkg/ ./par.o -t 16 -n 50000000
sudo perf stat -o par03-t16-50kk.txt -a -i -e cache-misses,cycles,instructions,cache-references,branches,cpu-clock,mem-loads,faults,task-clock,branch-misses,mem-stores,power/energy-cores/,power/energy-ram/,power/energy-pkg/ ./par.o -t 16 -n 50000000
sudo perf stat -o par04-t16-50kk.txt -a -i -e cache-misses,cycles,instructions,cache-references,branches,cpu-clock,mem-loads,faults,task-clock,branch-misses,mem-stores,power/energy-cores/,power/energy-ram/,power/energy-pkg/ ./par.o -t 16 -n 50000000
sudo perf stat -o par05-t16-50kk.txt -a -i -e cache-misses,cycles,instructions,cache-references,branches,cpu-clock,mem-loads,faults,task-clock,branch-misses,mem-stores,power/energy-cores/,power/energy-ram/,power/energy-pkg/ ./par.o -t 16 -n 50000000
sudo perf stat -o par06-t16-50kk.txt -a -i -e cache-misses,cycles,instructions,cache-references,branches,cpu-clock,mem-loads,faults,task-clock,branch-misses,mem-stores,power/energy-cores/,power/energy-ram/,power/energy-pkg/ ./par.o -t 16 -n 50000000
sudo perf stat -o par07-t16-50kk.txt -a -i -e cache-misses,cycles,instructions,cache-references,branches,cpu-clock,mem-loads,faults,task-clock,branch-misses,mem-stores,power/energy-cores/,power/energy-ram/,power/energy-pkg/ ./par.o -t 16 -n 50000000
sudo perf stat -o par08-t16-50kk.txt -a -i -e cache-misses,cycles,instructions,cache-references,branches,cpu-clock,mem-loads,faults,task-clock,branch-misses,mem-stores,power/energy-cores/,power/energy-ram/,power/energy-pkg/ ./par.o -t 16 -n 50000000
sudo perf stat -o par09-t16-50kk.txt -a -i -e cache-misses,cycles,instructions,cache-references,branches,cpu-clock,mem-loads,faults,task-clock,branch-misses,mem-stores,power/energy-cores/,power/energy-ram/,power/energy-pkg/ ./par.o -t 16 -n 50000000
sudo perf stat -o par10-t16-50kk.txt -a -i -e cache-misses,cycles,instructions,cache-references,branches,cpu-clock,mem-loads,faults,task-clock,branch-misses,mem-stores,power/energy-cores/,power/energy-ram/,power/energy-pkg/ ./par.o -t 16 -n 50000000


echo 15 rodada par
