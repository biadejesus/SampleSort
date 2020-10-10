TARGET=samplesort_par
EXEO3=samplesort_par_O3.out
EXEO0=samplesort_par_O0.out
PARALLEL_FLAGS_O3=-O3 -lm -w -pthread
PARALLEL_FLAGS_O0=-O0 -lm -w -pthread

GCC=gcc

all: paralelo03 paraleloO0

paralelo03: $(TARGET).c
	$(GCC) $(TARGET).c $(PARALLEL_FLAGS_O3) -o $(EXEO3)

paraleloO0: $(TARGET).c
	$(GCC) $(TARGET).c $(PARALLEL_FLAGS_O0) -o $(EXEO0)

clean: 
	$(RM) $(EXEO3) $(EXEO0)
