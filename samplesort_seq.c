#include <pthread.h>
#include <math.h>
#include <string.h>
#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <errno.h>
#include <ctype.h>
#include <getopt.h>

FILE *arq;
int num_threads;
int tam_vet;
int mediana;
int num_pivo;
int *vetor;
int *vetor_pivo;
int **vet_aux;
int *vet_ord;

typedef struct indice{
    int inicio;
    int fim;
} indice;

// indice *vet_indices;


int comparador(const void *a, const void *b) {
   return ( *(int*)a - *(int*)b );
}

void preencheVet(){
    int x;
    vetor = (int *)malloc(sizeof(int *) * tam_vet);
    // int vetor[tam_vet];
    srand(time(NULL));

    for(int i = 0; i<tam_vet; i++){
        vetor[i] = rand() % (100);
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
        qsort(vet_aux[i], tam_vet/num_threads, sizeof(int ), comparador);
    }
}

void pivo(){
    int k =0;
    num_pivo = num_threads -1;
    vetor_pivo = (int *)malloc(sizeof(int *) * (num_pivo));
    mediana = floor((tam_vet/num_threads)/num_pivo);
    int vet_pivoaux[num_threads*num_pivo];

    printf("MEDIANA: %d ", mediana);
    for(int i = 0; i < num_threads; i++ ){
        for(int j = 0; j< tam_vet/num_threads; j+=mediana+1){
            printf("\n J: %d ", j);
            vet_pivoaux[k]= vet_aux[i][j];
            k++;
        }
    }
    k = 0;  

    qsort(vet_pivoaux, num_threads*num_pivo, sizeof(int ), comparador);
    printf("\nPIVOS: ");

    for(int j = 0; j< num_threads*num_pivo; j+=mediana+1){
        vetor_pivo[k]= vet_pivoaux[j];
        k++;
    }
    for(int i = 0; i< num_pivo; i++)
        printf(" %d ", vetor_pivo[i]);
}

void ordenacao(){
    int x = 0;
    vet_ord = (int *)malloc(sizeof(int *) * tam_vet);
    for(int k = 0; k< num_pivo; k++){
        printf(" ENTROU %d \n", vetor_pivo[k]);
        for(int i = 0; i < num_threads; i++ ){
            for(int j = 0; j< tam_vet/num_threads; j++){
                if(vetor_pivo[k] > vet_aux[i][j]){
                    vet_ord[x] = vet_aux[i][j];
                    x++;
                    
                }
            
                else if(vetor_pivo[k] == vetor_pivo[num_pivo-1]){
                    vet_ord[x] = vet_aux[i][j];
                    x++;
                }
                else continue;
            qsort(vet_ord, x, sizeof(int ), comparador);
                
            }

        }
    
    }
    printf("\nVetor ordenado: \n");
    for(int i =0; i< x; i++){
        printf(" %d ", vet_ord[i]);
    }
}


void parametros(int t, char **args){
    int opt;
    while ((opt = getopt(t, args, "t:e:a:")) != -1){
        switch (opt){
        case 't':
            num_threads = strtoul(optarg, NULL, 0); //tranformar str em long int
            break;
        case 'e':
            tam_vet = strtoul(optarg, NULL, 0); //transformar em int
            preencheVet();
            break;
        case 'a':
            arq = fopen(optarg, "rt");
            if (arq == NULL) { 
                fprintf(stderr, "nao deu para abrir arquivo\n");
                return(1);
            }
            char *result;
            int c =0;
            int count = 0;
            while (!feof(arq)){
                c=getc(arq);
              if (c == ' ' || c =='\n'){
                count++;}
            }
            printf("numero %d ", count);
            fclose(arq);
            

            break;
        case '?':
            exit(EXIT_FAILURE);
        default:
            abort();
        }
    }

}

int main(int argv, char **argc){
    parametros(argv, argc);
    divide_vetor();
    pivo();
    ordenacao();
}