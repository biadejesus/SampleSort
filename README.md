# SampleSort
### Projeto 1 da disciplina de Programação Concorrente 2020

**Modo de execução** 

Para compilar o programa utilize o comando make no diretório desejado ou utilize "gcc -O3 samplesort_par.c -lm -lpthread -o samplesort_par.out" para o paralelo e "gcc -O3 samplesort_seq.c -lm -o samplesort_seq.out" para o sequencial. (A flag O3 pode ser mudada para O0, como desejar).

Para executar o programa utlize a flag -t para definir o numero de threads (ou pivôs, no caso do sequencial) que deseja (EX: -t 8).
Utilize a flag -n para definir o tamanho do vetor de entrada (EX: -n 300) 
**ou **
utilize a flag -a para inserir um arquivo como entrada (EX: -a entrada.txt).

Para gerar o relatório utilize o comando make no diretório do relatório. Ocorreu um erro na geração das imagens e não conseguimos solucioná-lo, sendo assim, o pdf pronto com as imagens corretas está no diretório do relatório.

As entradas para a realização de testes podem ser encontradas no Drive: <https://drive.google.com/drive/folders/1oaXV9fAHSLt80ge1bTx2sZDx1Py5uzKv?usp=sharing>
O arquivo tamanhosEntradas especifica o tamanho de cada uma das entradas.

OBS: Em ambos os códigos existem 'printf's comentados, estes mostram o vetor original e o ordenado. Caso queira verificar a saída descomente-os. Caso queira redirecionar a saída para um arquivo, descomente-os e insira " >> saida.txt" ao final da linha de comando da execução.
