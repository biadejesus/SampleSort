TARGETPAR=samplesort_par
EXEO3PAR=samplesort_par_O3.out
EXEO0PAR=samplesort_par_O0.out
PARALLEL_FLAGS_O3=-O3 -lm -w -pthread
PARALLEL_FLAGS_O0=-O0 -lm -w -pthread

GCC=gcc

all: paralelo03 paraleloO0

paralelo03: $(TARGETPAR).c
	$(GCC) $(TARGETPAR).c $(PARALLEL_FLAGS_O3) -o $(EXEO3PAR)

paraleloO0: $(TARGETPAR).c
	$(GCC) $(TARGETPAR).c $(PARALLEL_FLAGS_O0) -o $(EXEO0PAR)

clean: 
	$(RM) $(EXEO3PAR) $(EXEO0PAR)
