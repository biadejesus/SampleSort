TARGET=samplesort_seq
EXEO3=samplesort_seq_O3.out
EXEO0=samplesort_seq_O0.out
SEQ_FLAGS_O3=-O3 -w -lm
SEQ_FLAGS_O0=-O0 -w -lm

GCC=gcc

all: sequencial03 sequencialO0

sequencial03: $(TARGET).c
	$(GCC) $(TARGET).c $(SEQ_FLAGS_O3) -o $(EXEO3)

sequencialO0: $(TARGET).c
	$(GCC) $(TARGET).c $(SEQ_FLAGS_O0) -o $(EXEO0)

clean: 
	$(RM) $(EXEO3) $(EXEO0)
