#include <pthread.h>
#include <math.h>
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
int *vetor_pivo;
int **vet_aux;

typedef struct indice{
    int inicio;
    int fim;
} indice;

// indice *vet_indices;



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
    int x;
    vetor = (int *)malloc(sizeof(int *) * tam_vet);
    // int vetor[tam_vet];
    srand(time(NULL));

    for(int i = 0; i<tam_vet; i++){
        vetor[i] = rand() % (tam_vet- 1);
    }
    printf("VETOR INICIAL: ");
    for(int i = 0; i<tam_vet; i++){
        printf(" %d ", vetor[i]);
    }
}

// void divide_vetor(){
//     vet_indices = (int *)malloc(sizeof(int *) * num_threads);
//     int aux = (tam_vet/num_threads) -1;
//     for(int i = 0; i < tam_vet; i+= (tam_vet/num_threads)){
//         vet_indices[i].inicio = i;
//         vet_indices[i].fim = aux;
//         aux+= (tam_vet/num_threads);

//     }
// }
void divide_vetor(){
    vet_aux = (int **)malloc(num_threads * sizeof(int *));
    int k = 0;
    for(int i = 0; i < num_threads; i++ ){
        vet_aux[i] = (int*) malloc(tam_vet/num_threads * sizeof(int));
        for(int j = 0; j< tam_vet/num_threads; j++){
            printf("J: %d ", j);
            vet_aux[i][j] = vetor[k];
            k++;
        }
    }
    printf("\n");
    for(int i = 0; i < num_threads; i++ ){
        for(int k = 0; k< tam_vet/num_threads; k++){
            printf(" %d ",vet_aux[i][k]);
        }
        printf("\n");
    }
}

void pivo(){
    int k =0;
    int num_pivo = num_threads -1;
    vetor_pivo = (int *)malloc(sizeof(int *) * (num_threads*num_pivo));
    int mediana = floor((tam_vet/num_threads)/num_pivo);
    printf("MEDIANA: %d ", mediana);
    for(int i = 0; i < num_threads; i++ ){
        for(int j = 0; j< tam_vet/num_threads; j+=mediana+1){
            printf("\n J: %d ", j);
            vetor_pivo[k]= vet_aux[i][j];
            k++;
        }
    }
    printf("\nPIVOS: ");
    for(int i = 0; i<num_threads*num_pivo; i++ ){
        printf(" %d ", vetor_pivo[i]);
    }
}

int main(int argv, char **argc){
    parametros(argv, argc);
    preencheVet();
    divide_vetor();
    pivo();
}