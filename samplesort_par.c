#include <pthread.h>
#include <math.h>
#include <string.h>
#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <errno.h>
#include <semaphore.h>
#include <ctype.h>
#include <getopt.h>

#define MAX 16

FILE *arq;
int num_threads;
int tam_vet;
float mediana;
int num_pivo;
int *vetor;
int *vetor_pivo;
int *vet_pivoaux;
int **vet_aux;
int *vet_ord;
int y;
pthread_mutex_t lock;
pthread_barrier_t barrier;

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
int w = 0;
void pivo(int id)
{
    int x = tam_vet % num_threads;
    int k = 0;
    

    for (int i = id; i <= id; i++)
    { //toda thread vai começar com o y = 0 e isso ta errado
        printf("\nID: %d", id);
        if (x != 0)
        {
            for (float j = 0; j < (tam_vet / num_threads) + 1; j += mediana)
            {   printf("\nJ= %f", j);
                vet_pivoaux[y] = vet_aux[i][(int) round(j)];
                printf("\nPIVO: %d", vet_pivoaux[y]);
                pthread_mutex_lock(&lock);
                y++;
                w++;
                printf("\nW: %d", w);
                if(w == num_threads){
                    w = 0;
                    break;
                }
                pthread_mutex_unlock(&lock);
            }
            x--;
        }
        else
        {
            for (float j = 0; j < (tam_vet / num_threads); j += mediana)
            {

                pthread_mutex_lock(&lock);
                printf("\nJ= %f", j);
                vet_pivoaux[y] = vet_aux[i][(int) round(j)];
                printf("\nPIVO: %d", vet_pivoaux[y]);
                y++;
                pthread_mutex_unlock(&lock);
            }
        }
        printf("\n-------------------------\n");
        printf("printei aqui lul\n");
    }
    k = 0;

    qsort(vet_pivoaux, num_threads * num_threads, sizeof(int), comparador);

    // for (int j = 0; j < num_threads * num_threads; j += num_threads)
    // {
    //     vetor_pivo[k] = vet_pivoaux[j];
    //     k++;
    // }
}

void *divide_vetor(int id)
{
    int comeco = id * num_threads;
    int x = tam_vet % num_threads;
    for (int i = id; i <= id; i++)
    {
        if (x != 0)
        {
            vet_aux[i] = (int *)malloc(((tam_vet / num_threads) + 1 )* sizeof(int));
            x--;

            for (int j = 0; j < (tam_vet / num_threads) + 1; j++)
            {
                vet_aux[i][j] = vetor[y];
                pthread_mutex_lock(&lock);
                y++;
                pthread_mutex_unlock(&lock);
            }
            qsort(vet_aux[i], (tam_vet / num_threads) + 1, sizeof(int), comparador);
        }
        else
        {
            vet_aux[id] = (int *)malloc((tam_vet / num_threads) * sizeof(int));

            for (int j = 0; j < (tam_vet / num_threads); j++)
            {
                vet_aux[id][j] = vetor[y];
                pthread_mutex_lock(&lock);
                y++;
                pthread_mutex_unlock(&lock);
            }
            qsort(vet_aux[id], tam_vet / num_threads, sizeof(int), comparador);
        }
    }
    pthread_barrier_wait(&barrier);
    y = 0;
    pivo(id);
}

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

int main(int argv, char **argc)
{
    parametros(argv, argc);
    vet_aux = (long long **)malloc(num_threads * sizeof(long long *));
    vet_pivoaux = (long long *)malloc(sizeof(long long *) * (num_threads * num_threads));
    vetor_pivo = (long long *)malloc(sizeof(long long *) * (num_threads));
    mediana = (float)(tam_vet / num_threads) / num_threads;
    printf("MEDIANA: %f\n", mediana);

    y = 0;
    int err;
    pthread_t tid[MAX];
    // divide_vetor();
    // pivo();
    // ordenacao();
    pthread_barrier_init(&barrier, NULL, num_threads);

    for (int i = 0; i < num_threads; i++)
    {
        err = pthread_create(&tid[i], NULL, (void *)divide_vetor, i); //o pthread_create que armazena um valor no id
    }
    for (int i = 0; i < num_threads; i++)
    {
        err = pthread_join(tid[i], NULL); //o join junta todas as threads de volta, trazendo o result final
    }

    // printf("\nVETOR ORIGINAL\n");
    // for (int j = 0; j < tam_vet; j++)
    //     printf(" %d ", vetor[j]);

    // printf("\nVET AUX PIVO\n");
    // for (int j = 0; j < num_threads * num_threads; j++)
    //     printf(" %d ", vet_pivoaux[j]);

    // printf("\n---------------\n");
    // for (int i = 0; i < num_threads; i++)
    // {
    //     for (int j = 0; j < tam_vet / num_threads; j++)
    //     {
    //         printf(" %d ", vet_aux[i][j]);
    //     }
    //     printf("\n");
    // }
}