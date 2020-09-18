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

typedef struct {
    pthread_mutex_t mutex;
    sem_t waitsem;
    int nthreads, current;
}barrier_t, *ptr_barrier_t;

void barrier_init(ptr_barrier_t pbarrier, int nt) {
    pbarrier->nthreads = nt;
    pbarrier->current = 0;
    pthread_mutex_init(&(pbarrier->mutex), NULL);
    sem_init(&(pbarrier->waitsem), 0, 0);
}

void barrier(ptr_barrier_t pbarrier) {
    int i;
    pthread_mutex_lock(&(pbarrier->mutex));
    pbarrier->current++;
    if(pbarrier->current < pbarrier->nthreads) {
        pthread_mutex_unlock(&(pbarrier->mutex));
        sem_wait(&(pbarrier->waitsem));
    }else{
        for(i=0; i<(pbarrier->nthreads - 1); i++)
            sem_post(&(pbarrier->waitsem));
        pbarrier->current = 0;
        pthread_mutex_unlock(&(pbarrier->mutex));
    }
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
                fprintf(stderr, "nao deu para abrir arquivo\n");
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
    pthread_t tid[MAX];
    parametros(argv, argc);
    divide_vetor();
    pivo();
    ordenacao();

    for( int i=0; i<num_threads; i++){
        err = pthread_create(&tid[i], NULL, (void*) "função", i); //o pthread_create que armazena um valor no id
    }
    for (int i=0; i< num_threads; i++){
        err = pthread_join(tid[i], NULL); //o join junta todas as threads de volta, trazendo o result final
    }
}