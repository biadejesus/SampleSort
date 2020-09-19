#include <pthread.h>
#include <string.h>
#include <semaphore.h>
#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <errno.h>
#include <ctype.h>

#define MAX 16

FILE *arq;
int err;
int num_threads;
int tam_vet;
int mediana;
int num_pivo;
int *vetor;
int *vetor_pivo;
int *vet_pivoaux;
int *vet_aux;
int *vet_ord;
int x;

// typedef struct {
//     pthread_mutex_t mutex;
//     sem_t waitsem;
//     int nthreads, current;
// }barrier_t, *ptr_barrier_t;

// void barrier_init(ptr_barrier_t pbarrier, int nt) {
//     pbarrier->nthreads = nt;
//     pbarrier->current = 0;
//     pthread_mutex_init(&(pbarrier->mutex), NULL);
//     sem_init(&(pbarrier->waitsem), 0, 0);
// }

// void barrier(ptr_barrier_t pbarrier) {
//     int i;
//     pthread_mutex_lock(&(pbarrier->mutex));
//     pbarrier->current++;
//     if(pbarrier->current < pbarrier->nthreads) {
//         pthread_mutex_unlock(&(pbarrier->mutex));
//         sem_wait(&(pbarrier->waitsem));
//     }else{
//         for(i=0; i<(pbarrier->nthreads - 1); i++)
//             sem_post(&(pbarrier->waitsem));
//         pbarrier->current = 0;
//         pthread_mutex_unlock(&(pbarrier->mutex));
//     }
// }

pthread_barrier_t barrier;
pthread_mutex_t lock;

// int pthread_barrier_init(pthread_barrier_t *barrier, const pthread_barrierattr_t *attr, unsigned int num_threads);

// int pthread_barrier_wait (pthread_barrier_t *barrier);

int comparador(const void *a, const void *b)
{
    return (*(int *)a - *(int *)b);
}

void preencheVet()
{
    vetor = (int *)malloc(sizeof(int *) * tam_vet);
    srand(time(NULL));

    for (int i = 0; i < tam_vet; i++)
    {
        vetor[i] = rand() % (tam_vet);
    }
}

void *divide_vetor(int id)
{
    printf("\nENTROUU divide");
    int length_per_thread = tam_vet/num_threads;
    int start=0;
    
    vet_aux = (int *)malloc(tam_vet * sizeof(int *));
    int k = 0;
    printf("\n ID: %d", id);
    printf("\nX: %d", start);
    // if (x != 0)
    // {
    //     printf("\nENTROU IF");
        start = id * length_per_thread;
        printf("AA %d", start+length_per_thread);
        for (int i = start; i < (start + length_per_thread) ; i++)
        {
            printf("\nENTROU FOR");
            // vet_aux[i] = vetor[k];
            // k++;
            // qsort(vet_aux[i], (tam_vet / num_threads), sizeof(int), comparador);
        }
    //     pthread_mutex_lock(&lock);
    //     x--;
    //     pthread_mutex_unlock(&lock);
    // }
    // else
    // {   
    //     printf("\nENTROU ELSE ID: %d", id);
    //     printf("\naa: %d", start);
    //     start = id * length_per_thread;
    //     printf("\nbb: %d", start);

    //     for (int i = start; i < start + length_per_thread; i++)
    //     {
    //         printf("\nENTROU FOR");
    //         vet_aux[i] = vetor[k];
    //         k++;
    //         qsort(vet_aux[i], tam_vet / num_threads, sizeof(int), comparador);
    //     }
    // }
    printf("\nMatriz auxiliar: \n");
    for (int i = 0; i < tam_vet; i++)
        printf(" %d ", vet_aux[i]);
    // printf("\n");
    // }
}

// void *pivo()
// {
//     printf("\nPIVO\n");
//     int x = tam_vet % num_threads;
//     int k = 0;
//     vetor_pivo = (int *)malloc(sizeof(int *) * (num_threads));
//     mediana = floor((tam_vet / num_threads) / num_threads);

//     vet_pivoaux = (int *)malloc(sizeof(int *) * (num_threads * num_threads));

//     for (int i = 0; i < num_threads; i++)
//     {
//         if (x != 0)
//         {
//             for (int j = 0; j < (tam_vet / num_threads) + 1; j += mediana)
//             {
//                 vet_pivoaux[k] = vet_aux[i][j];
//                 k++;
//             }
//             x--;
//         }
//         else
//         {
//             for (int j = 0; j < (tam_vet / num_threads); j += mediana)
//             {
//                 vet_pivoaux[k] = vet_aux[i][j];
//                 k++;
//             }
//         }
//     }
//     k = 0;

//     for (int i = 0; i < num_threads * num_threads; i++)
//     {
//         printf("\nPIVO: %d", vet_pivoaux[i]);
//     }

//     qsort(vet_pivoaux, num_threads * num_threads, sizeof(int), comparador);

//     for (int j = 0; j < num_threads * num_threads; j += num_threads)
//     {
//         vetor_pivo[k] = vet_pivoaux[j];
//         k++;
//     }

//     for (int i = 0; i < num_threads; i++)
//     {
//         printf("\nPIVO dps: %d", vetor_pivo[i]);
//     }
// }

// void *ordenacao()
// {
//     int z = 0;
//     int x = tam_vet % num_threads;
//     vet_ord = (int *)malloc(sizeof(int *) * tam_vet);
//     for (int k = 0; k < num_threads; k++)
//     {
//         x = tam_vet % num_threads;
//         for (int i = 0; i < num_threads; i++)
//         {
//             if (x != 0)
//             {
//                 x--;
//                 for (int j = 0; j < (tam_vet / num_threads) + 1; j++)
//                 {
//                     if (vetor_pivo[k] > vet_aux[i][j] && vet_aux[i][j] != -1)
//                     {
//                         vet_ord[z] = vet_aux[i][j];
//                         vet_aux[i][j] = -1;
//                         z++;
//                     }

//                     else if (vetor_pivo[k] == vetor_pivo[num_threads - 1])
//                     {
//                         if (vet_aux[i][j] != -1)
//                         {
//                             vet_ord[z] = vet_aux[i][j];
//                             z++;
//                         }
//                     }
//                     else
//                         break;
//                     qsort(vet_ord, z, sizeof(int), comparador);
//                 }
//             }
//             else
//             {
//                 for (int j = 0; j < (tam_vet / num_threads); j++)
//                 {
//                     if (vetor_pivo[k] > vet_aux[i][j] && vet_aux[i][j] != -1)
//                     {
//                         vet_ord[z] = vet_aux[i][j];
//                         vet_aux[i][j] = -1;
//                         z++;
//                     }

//                     else if (vetor_pivo[k] == vetor_pivo[num_threads - 1])
//                     {
//                         if (vet_aux[i][j] != -1)
//                         {
//                             vet_ord[z] = vet_aux[i][j];
//                             z++;
//                         }
//                     }
//                     else
//                         break;
//                     qsort(vet_ord, z, sizeof(int), comparador);
//                 }
//             }
//         }
//     }
//     printf("\nVetor ordenado: \n");
//     for (int i = 0; i < tam_vet; i++)
//     {
//         printf(" %d ", vet_ord[i]);
//     }
//     printf("\n");
// }

void parametros(int t, char **args)
{
    int opt;
    while ((opt = getopt(t, args, "t:n:a:")) != -1)
    {
        switch (opt)
        {
        case 't':
            num_threads = strtoul(optarg, NULL, 0); //tranformar str em long int
            break;
        case 'n':
            tam_vet = strtoul(optarg, NULL, 0); //transformar em int
            preencheVet();
            break;
        case 'a':
            arq = fopen(optarg, "rt");
            if (arq == NULL)
            {
                fprintf(stderr, "erro ao abrir arquivo\n");
                return (1);
            }
            char *result;
            int i = 0;
            int k = 0;
            int count = 0;

            while (!feof(arq))
            {
                fscanf(arq, "%d", &k);
                count++;
            }
            rewind(arq);
            vetor = (int *)malloc(sizeof(int *) * count);
            while (!feof(arq))
            {
                fscanf(arq, "%d", &k);
                vetor[i] = k;
                i++;
            }
            tam_vet = count;
            fclose(arq);
            break;
        case '?':
            exit(EXIT_FAILURE);
        default:
            abort();
        }
    }
}

// void controla(){
//     pthread_barrier_init (&barrier, NULL, num_threads);
//     divide_vetor();
//     printf("\nENTROU BARREIRA 1");
//     pthread_barrier_wait (&barrier);
//     printf("\nSAIU DA BARREIRA 1");
//     pivo();
//     printf("\nENTROU BARREIRA 2");
//     pthread_barrier_wait (&barrier);
//     printf("\nSAIU DA BARREIRA 2");
//     ordenacao();
// }

int main(int argv, char **argc)
{
    pthread_t tid[MAX];
    parametros(argv, argc);
    x = tam_vet % num_threads;
    // pivo();
    // ordenacao();

    for (int i = 0; i < num_threads; i++)
    {
        err = pthread_create(&tid[i], NULL, (void *)divide_vetor, i); //o pthread_create que armazena um valor no id
    }
    for (int i = 0; i < num_threads; i++)
    {
        err = pthread_join(tid[i], NULL); //o join junta todas as threads de volta, trazendo o result final
    }
    // for (int i = 0; i < num_threads; i++)
    // {
    //     err = pthread_create(&tid[i], NULL, (void *) pivo, i); //o pthread_create que armazena um valor no id
    // }
    // for (int i = 0; i < num_threads; i++)
    // {
    //     err = pthread_join(tid[i], NULL); //o join junta todas as threads de volta, trazendo o result final
    // }
    // for (int i = 0; i < num_threads; i++)
    // {
    //     err = pthread_create(&tid[i], NULL, (void *) ordenacao, i); //o pthread_create que armazena um valor no id
    // }
    // for (int i = 0; i < num_threads; i++)
    // {
    //     err = pthread_join(tid[i], NULL); //o join junta todas as threads de volta, trazendo o result final
    // }

    for (int i = 0; i < tam_vet; i++)
    {
        printf(" %d", vetor[i]);
    }
    // printf("\n------------------------\n");
    //   for(int i=0; i<tam_vet; i++){
    //     printf(" %d", vet_ord[i]);
    // }
    printf("\n");
    for (int j = 0; j < num_threads; j++)
    {
            printf("%d ", vet_aux[j]);
        printf("\n");
    }
}