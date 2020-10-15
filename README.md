# SampleSort
### Projeto 1 da disciplina de Programação Concorrente 2020

**Modo de execução** 

Para compilar o programa utilize o comando make no diretório principal ou utilize "gcc -O3 samplesort_par.c -lm -lpthread -o samplesort_par.out" para o paralelo e "gcc -O3 samplesort_seq.c -lm -o samplesort_seq.out" para o sequencial. (A flag O3 pode ser mudada para O0, como desejar).

Para executar o programa execute o script run.sh, não se esqueça de dar permissão ao script com chmod. É necessário inserir duas opções para a execução do run, a flag -n deve ser indicada com o número de vezes que se deseja executar os algoritmos, a flag -t deverá indicar o número de threads a ser utilizado nas execuções.
O script foi programado para calcular o speedup tanto com O0 quanto com O3.
Utilize a flag -h para ajuda.

Para gerar o relatório utilize o comando make no diretório do relatório.

As entradas para a realização de testes podem ser encontradas no Drive: <https://drive.google.com/drive/folders/1oaXV9fAHSLt80ge1bTx2sZDx1Py5uzKv?usp=sharing>

O arquivo tamanhosEntradas especifica o tamanho de cada uma das entradas.

OBS: Em ambos os códigos existem 'printf's comentados, estes mostram o vetor original e o ordenado. Caso queira verificar a saída descomente-os. Caso queira redirecionar a saída para um arquivo, descomente-os e insira " >> saida.txt" ao final da linha de comando da execução.
