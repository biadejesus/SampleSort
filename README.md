# SampleSort
### Projeto 1 da disciplina de Programação Concorrente 2020

**Modo de execução** 

Para compilar o programa utilize o comando make no diretório desejado ou utilize "gcc -O3 samplesort_par.c -lm -lpthread -o samplesort_par.out" para o paralelo e "gcc -O3 samplesort_seq.c -lm -o samplesort_seq.out" para o sequencial. (A flag O3 pode ser mudada para O0, como desejar).

Para executar o programa utlize a flag -t para definir o numero de threads que deseja (EX: -t 8).
Utilize a flag -n para definir o tamanho do vetor de entrada (EX: -n 300).
Utilize a flag -a para inserir um arquivo como entrada (EX: -a entrada.txt).

Para gerar o relatório utilize o comando make no diretório do relatório.

OBS: Em ambos os códigos existem 'printf's comentados, estes mostram o vetor original e o ordenado. Caso queira verificar a saída descomente-os. Caso queira redirecionar a saída para um arquivo, descomente-os e insira " >> saida.txt" ao final da linha de comando da execução.