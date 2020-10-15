TARGETSEQ=codigos/sequencial/samplesort_seq.c
EXEO3SEQ=samplesort_seq_O3.out
EXEO0SEQ=samplesort_seq_O0.out
SEQ_FLAGS_O3=-O3 -w -lm
SEQ_FLAGS_O0=-O0 -w -lm

GCC=gcc

TARGETPAR=codigos/paralelo/samplesort_par.c
EXEO3PAR=samplesort_par_O3.out
EXEO0PAR=samplesort_par_O0.out
PARALLEL_FLAGS_O3=-O3 -lm -w -pthread
PARALLEL_FLAGS_O0=-O0 -lm -w -pthread

all:sequencial03 sequencialO0 paralelo03 paraleloO0

paralelo03: $(TARGETPAR)
	$(GCC) $(TARGETPAR) $(PARALLEL_FLAGS_O3) -o $(EXEO3PAR)
	mv $(EXEO3PAR) codigos

paraleloO0: $(TARGETPAR)
	$(GCC) $(TARGETPAR) $(PARALLEL_FLAGS_O0) -o $(EXEO0PAR)
	mv $(EXEO0PAR) codigos

sequencial03: $(TARGETSEQ)
	$(GCC) $(TARGETSEQ) $(SEQ_FLAGS_O3) -o $(EXEO3SEQ)
	mv $(EXEO3SEQ) codigos

sequencialO0: $(TARGETSEQ)
	$(GCC) $(TARGETSEQ) $(SEQ_FLAGS_O0) -o $(EXEO0SEQ)
	mv $(EXEO0SEQ) codigos

