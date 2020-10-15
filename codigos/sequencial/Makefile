TARGETSEQ=samplesort_seq
EXEO3SEQ=samplesort_seq_O3.out
EXEO0SEQ=samplesort_seq_O0.out
SEQ_FLAGS_O3=-O3 -w -lm
SEQ_FLAGS_O0=-O0 -w -lm

GCC=gcc

all: sequencial03 sequencialO0

sequencial03: $(TARGETSEQ).c
	$(GCC) $(TARGETSEQ).c $(SEQ_FLAGS_O3) -o $(EXEO3SEQ)

sequencialO0: $(TARGETSEQ).c
	$(GCC) $(TARGETSEQ).c $(SEQ_FLAGS_O0) -o $(EXEO0SEQ)

clean: 
	$(RM) $(EXEO3SEQ) $(EXEO0SEQ)
