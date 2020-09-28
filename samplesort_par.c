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
long long *vetor_tam;
int num_threads;
int tam_vet;
float mediana;
int num_pivo;
int *vetor;
long long *vetor_pivo;
long long *vet_pivoaux;
long long **vet_aux;
long long *vet_ord;
int y, x, w, k, z, s;
pthread_mutex_t lock;
pthread_barrier_t barrier;

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

void ordenacao(int id)
{

    for (int k = 0; k < num_threads; k++)
    {
        for (int i = id; i <= id; i++)
        {
            if (vetor_tam[id] == (tam_vet / num_threads) + 1)
            {

                for (int j = 0; j < ((tam_vet / num_threads) + 1); j++)
                {
                    if (vetor_pivo[k] > vet_aux[i][j] && vet_aux[i][j] != -1)
                    {
                        printf("");
                        pthread_mutex_lock(&lock);
                        vet_ord[z] = vet_aux[i][j];
                        vet_aux[i][j] = -1;
                        z++;
                        pthread_mutex_unlock(&lock);
                    }

                    else if (vetor_pivo[k] == vetor_pivo[num_threads - 1])
                    {
                        if (vet_aux[i][j] != -1)
                        {
                            pthread_mutex_lock(&lock);
                            vet_ord[z] = vet_aux[i][j];
                            vet_aux[i][j] = -1;
                            z++;
                            pthread_mutex_unlock(&lock);
                        }
                    }
                    else
                    {
                        break;
                    }
                }
                qsort(vet_ord, z, sizeof(long long), comparador);
            }
            else
            {
                for (int j = 0; j < (tam_vet / num_threads); j++)
                {
                    if (vetor_pivo[k] > vet_aux[i][j] && vet_aux[i][j] != -1)
                    {
                        printf("");
                        pthread_mutex_lock(&lock);
                        vet_ord[z] = vet_aux[i][j];
                        vet_aux[i][j] = -1;
                        z++;
                        pthread_mutex_unlock(&lock);
                    }

                    else if (vetor_pivo[k] == vetor_pivo[num_threads - 1])
                    {
                        if (vet_aux[i][j] != -1)
                        {
                            pthread_mutex_lock(&lock);
                            vet_ord[z] = vet_aux[i][j];
                            vet_aux[i][j] = -1;
                            z++;
                            pthread_mutex_unlock(&lock);
                        }
                    }
                    else
                    {
                        break;
                    }
                }
                qsort(vet_ord, z, sizeof(long long), comparador);
            }
        }
    }
    pthread_barrier_wait(&barrier);
}

void *pivo(int id)
{
    for (int i = id; i <= id; i++)
    {
        if (vetor_tam[id] == (tam_vet / num_threads) + 1)
        {

            for (float j = 0; j < ((tam_vet / num_threads) + 1); j += mediana)
            {
                pthread_mutex_lock(&lock);
                vet_pivoaux[k] = vet_aux[i][(int)round(j)];
                k++;
                w++;
                pthread_mutex_unlock(&lock);

                if (w == num_threads)
                {
                    w = 0;
                    break;
                }
            }
        }
        else
        {
            for (float j = 0; j < (tam_vet / num_threads); j += mediana)
            {
                pthread_mutex_lock(&lock);
                vet_pivoaux[k] = vet_aux[i][(int)round(j)];
                k++;
                pthread_mutex_unlock(&lock);
            }
        }
    }

    pthread_barrier_wait(&barrier);
    qsort(vet_pivoaux, (num_threads * num_threads), sizeof(long long), comparador);

    if (id == 0)
    {
        k = 0;
        for (int j = 0; j < (num_threads * num_threads); j += num_threads)
        {
            vetor_pivo[k] = vet_pivoaux[j];
            k++;
        }
    }
    pthread_barrier_wait(&barrier);
    w = 0;
    x = tam_vet % num_threads;
    ordenacao(id);
}

void *divide_vetor(int id)
{
    int comeco = id * num_threads;
    for (int i = id; i <= id; i++)
    {
        if (x > 0)
        {
            x--;
            vetor_tam[id] = (tam_vet / num_threads) + 1;
            vet_aux[i] = (long long *)malloc(((tam_vet / num_threads) + 1) * sizeof(long long));
            for (int j = 0; j < (tam_vet / num_threads) + 1; j++)
            {

                pthread_mutex_lock(&lock);
                vet_aux[i][j] = vetor[y];
                y++;
                pthread_mutex_unlock(&lock);
            }
            qsort(vet_aux[i], (tam_vet / num_threads) + 1, sizeof(long long), comparador);
        }
        else
        {
            vetor_tam[id] = (tam_vet / num_threads);
            vet_aux[id] = (long long *)malloc((tam_vet / num_threads) * sizeof(long long));

            for (int j = 0; j < (tam_vet / num_threads); j++)
            {

                pthread_mutex_lock(&lock);
                vet_aux[id][j] = vetor[y];
                y++;
                pthread_mutex_unlock(&lock);
            }
            qsort(vet_aux[id], tam_vet / num_threads, sizeof(long long), comparador);
        }
    }
    pthread_barrier_wait(&barrier);
    y = 0;
    x = tam_vet % num_threads;
    pivo(id);
}

void parametros(int argv, char **args)
{
    int opt;
    while ((opt = getopt(argv, args, "t:n:a:h")) != -1)
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
                printf("\nerro ao abrir arquivo\n");
                exit(EXIT_FAILURE);
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
        case 'h':
            printf("\najuda\n");
            break;
        default:
            abort();
        }
    }
    if ((tam_vet / num_threads) < num_threads)
    {
        printf("\nEntrada inválida! Insina N e T tal que T < N/T\n");
        exit(EXIT_FAILURE);
    }
}

int main(int argv, char **argc)
{
    parametros(argv, argc);
    vet_aux = (long long **)malloc(num_threads * sizeof(long long *));
    vet_pivoaux = (long long *)malloc(sizeof(long long *) * (num_threads * num_threads));
    vetor_pivo = (long long *)malloc(sizeof(long long *) * (num_threads));
    vet_ord = (long long *)malloc(sizeof(long long *) * tam_vet);
    vetor_tam = (long long *)malloc(sizeof(long long *) * (num_threads));
    mediana = (float)(tam_vet / num_threads) / num_threads;
    w = 0;
    z = 0;
    x = tam_vet % num_threads;
    s = x;
    y = 0;
    k = 0;
    int err;
    pthread_t tid[MAX];

    pthread_barrier_init(&barrier, NULL, num_threads);

    for (int i = 0; i < num_threads; i++)
    {
        err = pthread_create(&tid[i], NULL, (void *)divide_vetor, i); //o pthread_create que armazena um valor no id
    }
    for (int i = 0; i < num_threads; i++)
    {
        err = pthread_join(tid[i], NULL); //o join junta todas as threads de volta, trazendo o result final
    }

}