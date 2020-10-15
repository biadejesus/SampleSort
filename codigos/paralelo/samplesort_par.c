#include <pthread.h>
#include <math.h>
#include <string.h>
#include <stdio.h>
#include <stdint.h>
#include <stdlib.h>
#include <unistd.h>
#include <errno.h>
#include <semaphore.h>
#include <ctype.h>
#include <getopt.h>
#include <sys/time.h>

#define MAX 16

FILE *arq;
long long *vetor_tam;
int num_threads;
int tam_vet;
float mediana;
long long *vetor;
long long *vetor_pivo;
long long *vet_pivoaux;
long long **vet_aux;
long long *vet_ord;
int x, z;
int flag;
pthread_mutex_t lock;
pthread_barrier_t barrier;

int comparador(const void *a, const void *b)
{
    return (*(long long *)a - *(long long *)b);
}

void preencheVet()
{
    vetor = (long long *)malloc(sizeof(long long *) * tam_vet);
    srand(time(NULL));

    for (int i = 0; i < tam_vet; i++)
    {
        vetor[i] = rand() % (200);
    }
}

void *ordenacao(int id)
{
    for (int k = 0; k < num_threads; k++)
    {
        for (int j = 0; j < vetor_tam[id]; j++)
        {
            if (vetor_pivo[k] > vet_aux[id][j] && vet_aux[id][j] != -1)
            {
                pthread_mutex_lock(&lock);
                vet_ord[z] = vet_aux[id][j];
                z++;
                pthread_mutex_unlock(&lock);
                vet_aux[id][j] = -1;
            }

            else if (vetor_pivo[k] == vetor_pivo[num_threads - 1])
            {
                if (vet_aux[id][j] != -1)
                {
                    pthread_mutex_lock(&lock);
                    vet_ord[z] = vet_aux[id][j];
                    z++;
                    pthread_mutex_unlock(&lock);
                    vet_aux[id][j] = -1;
                }
            }
            else
            {
                break;
            }
        }
        pthread_barrier_wait(&barrier);
        if (id == 0)
        {
            qsort(vet_ord, z, sizeof(long long), comparador);
        }
    }
}

void *pivo(int id)
{
    int comeco = id * num_threads;
    int y = 0;
    for (float j = 0; (int)round(j) < vetor_tam[id]; j += mediana)
    {
        vet_pivoaux[comeco] = vet_aux[id][(int)round(j)];
        comeco++;
        y++;
        if (y == num_threads)
        {
            y = 0;
            break;
        }
    }
    pthread_barrier_wait(&barrier);

    if (id == 0)
    {
        qsort(vet_pivoaux, (num_threads * num_threads), sizeof(long long), comparador);
        int k = 0;
        for (int j = 0; j < (num_threads * num_threads); j += num_threads)
        {
            vetor_pivo[k] = vet_pivoaux[j];
            k++;
        }
    }
    pthread_barrier_wait(&barrier);
    ordenacao(id);
}

void *divide_vetor(void *v)
{
    
    long id = (long)v;
    int comeco = id * (int)(tam_vet / num_threads);
    if (id < x)
    {
        comeco += id;
    }
    else
    {
        comeco += x;
    }
    int aux = comeco;
    int fim = comeco + ((tam_vet / num_threads) - 1);
    if (id < x)
    {
        fim++;
    }
    vetor_tam[id] = (fim - comeco + 1);
    vet_aux[id] = (long long *)malloc((fim - comeco + 1) * sizeof(long long));
    for (int j = 0; j < (fim - comeco + 1); j++)
    {

        vet_aux[id][j] = vetor[aux]; 
        aux++;
    }
    qsort(vet_aux[id], fim - comeco + 1, sizeof(long long), comparador);
    pthread_barrier_wait(&barrier);
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
            vetor = (long long *)malloc(sizeof(long long *) * count);
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
            printf("\n---Ajuda---\n");
            printf("\nPara executar o programa utlize a flag -t para definir o numero de threads que deseja (EX: -t 8)");
            printf("\nCaso queira gerar numeros aleatorios como entrada utilize a flag -n para definir o tamanho do vetor de entrada (EX: -n 300)");
            printf("\nCaso queira inserir um arquivo como entrada utilize a flag -a para inserir um arquivo (EX: -a entrada.txt)\n");
            printf("\nAo final do código existem 'printf's comentados, estes mostram o vetor original e o ordenado. Caso queira verificar a saída descomente-os. Caso queira redirecionar a saida para um arquivo, descomente-os e insira ' >> saida.txt' ao final da linha de comando da execucao.\n");
            exit(EXIT_SUCCESS);
            break;
        default:
            abort();
        }
    }
    if (num_threads!= 0 && (tam_vet / num_threads) < num_threads)
    {
        printf("\nEntrada inválida! Insina N e T tal que T < N/T\n");
        exit(EXIT_FAILURE);
    }
    if(num_threads == 0){
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
    z = 0;
    x = tam_vet % num_threads;

    int err;
    pthread_t tid[MAX];

    pthread_barrier_init(&barrier, NULL, num_threads);
    struct timeval begin, end;
    gettimeofday(&begin, 0);

    for (int i = 0; i < num_threads; i++)
    {
        err = pthread_create(&tid[i], NULL, (void *)divide_vetor, (void *)(intptr_t)i); 
    }
    for (int i = 0; i < num_threads; i++)
    {
        err = pthread_join(tid[i], NULL); 
    }
    gettimeofday(&end, NULL);
    long seconds = end.tv_sec - begin.tv_sec;
    long microseconds = end.tv_usec - begin.tv_usec;
    double elapsed = seconds + microseconds * 1e-6;
    // printf("\n");
    // for (int i=0; i< tam_vet; i++){
    //     printf("%lld ", vetor[i]);
    // }
    // printf("\n");
    // for (int i=0; i< tam_vet; i++){
    //     printf("%lld ", vet_ord[i]);
    // }
    // printf("\n");
    //printf("Time measured: %.3f seconds.\n", elapsed);
}