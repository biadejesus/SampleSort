#!/bin/bash

PARALELO_O3=codigos/samplesort_par_O3.out
PARALELO_O0=codigos/samplesort_par_O0.out
SEQUENCIAL_O3=codigos/samplesort_seq_O3.out
SEQUENCIAL_O0=codigos/samplesort_seq_O0.out

run(){
	for input in entradaVerySmall.txt entradaSmall.txt entradaMedium.txt
		do
			echo "Executando o algoritmo sequencial com O3 e $threads threads... Arquivo: = $input"
			TIME_SEQ_O3=0
			for ((i=1;i<=n;i++)); do
				$SEQUENCIAL_O3 -t $threads -a $input > saida_seq_O3.txt
			while read line; do TIME_SEQ_O3=$((echo $TIME_SEQ_O3 + $line) | bc); done < saida_seq_O3.txt
				done
			echo "Levou $TIME_SEQ_O3 segundos para rodar o $input sequencial O3 com $threads threads"
			echo "Executando o algoritmo sequencial com O0 e $threads threads... Arquivo: = $input"
				TIME_SEQ_O0=0
			for ((i=1;i<=n;i++)); do
				$SEQUENCIAL_O0 -t $threads -a $input > saida_seq_O0.txt
			while read line; do TIME_SEQ_O0=$((echo $TIME_SEQ_O0 + $line) | bc); done < saida_seq_O0.txt
				done
			echo "Levou $TIME_SEQ_O0 segundos para rodar o $input sequencial O0 com $threads threads"
			echo "Executando o algoritmo paralelo com O0 e $threads threads... Arquivo: = $input"
				TIME_PAR_O0=0
			for ((i=1;i<=n;i++)); do
				$PARALELO_O0 -t $threads -a $input > saida_par_O0.txt
			while read line; do TIME_PAR_O0=$((echo $TIME_PAR_O0 + $line) | bc); done < saida_par_O0.txt
				done
			echo "Levou $TIME_PAR_O0 segundos para rodar o $input paralelo O0 com $threads threads"
			echo "Executando o algoritmo paralelo com O3 e $threads threads... Arquivo: = $input"
				TIME_PAR_O3=0
			for ((i=1;i<=n;i++)); do
				$PARALELO_O3 -t $threads -a $input > saida_par_O3.txt
			while read line; do TIME_PAR_O3=$((echo $TIME_PAR_O3 + $line) | bc); done < saida_par_O3.txt
				done
			echo "Levou $TIME_PAR_O3 segundos para rodar o $input paralelo O0 com $threads threads"

			SPEEDUPO0=$((echo scale=2 ; echo $TIME_SEQ_O0 / $TIME_PAR_O0) | bc)
			SPEEDUPO3=$((echo scale=2 ; echo $TIME_SEQ_O3 / $TIME_PAR_O3) | bc)
			echo "O speedup calculado para o $input com O0 e $threads threads foi de: $SPEEDUPO0"
			echo "O speedup calculado para o $input com O0 e $threads threads foi de: $SPEEDUPO3"
			echo ""
			done
}

helpFunction()
{
   echo ""
   echo "Usage: $0 -n "
   echo -e "\t-n numero de vezes que o programa vai executar"
  	echo -e "\t-t numero de threads "
	echo -e "\t-h ajuda "
}


while getopts "n:t:h" opt
do
   case "$opt" in
    n ) n="$OPTARG" ;;
    t ) threads="$OPTARG" ;;
    h ) helpFunction ;;
    ? ) helpFunction ;;
  esac
done

if [ -z "$n" ]
then
   echo "Parametros vazios";
   helpFunction
fi

echo ""

if [ -f "$PARALELO_O3" ] && [ -f "$SEQUENCIAL_O3" ] && [ -f "$PARALELO_O0" ] && [ -f "$SEQUENCIAL_O0" ] ; then
	run
else 
  echo "$PARALELO_O3 ou $SEQUENCIAL_O3 nao existem. Por favor execute 'make' antes de executar este script."
fi
