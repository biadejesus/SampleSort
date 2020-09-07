#include <pthread.h>
#include <string.h>
#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <errno.h>
#include <ctype.h>
#include <getopt.h>

int num_threads;
int tam_vet;
int *vetor;

typedef struct indice{
    int inicio;
    int fim;
} indice;


void parametros(int t, char **args){
    int opt;
    while ((opt = getopt(t, args, "t:e:")) != -1){
        switch (opt){
        case 't':
            num_threads = strtoul(optarg, NULL, 0); //tranformar str em long int
            break;
        case 'e':
            tam_vet = strtoul(optarg, NULL, 0); //transformar em int
            break;
        case '?':
            exit(EXIT_FAILURE);
        default:
            abort();
        }
    }

}

void preencheVet(){
    printf("\nEntrou PREENCHE\n");
    int x;
    vetor = (int *)malloc(sizeof(int *) * tam_vet);
    // int vetor[tam_vet];
    for(int i = 0; i<tam_vet; i++){
        vetor[i] = rand() % (tam_vet- 1);
    }
}

void divide_vetor(){
    printf("\nENTROU DIVIDE\n");
    indice vet_indices[num_threads];
    int aux = (tam_vet/num_threads) -1;
    for(int i = 0; i < tam_vet; i+= (tam_vet/num_threads)){
        vet_indices->inicio = i;
        vet_indices->fim = aux;
        aux+= (tam_vet/num_threads);

    }
}

int main(int argv, char **argc){
    parametros(argv, argc);
    preencheVet();
    divide_vetor();
}