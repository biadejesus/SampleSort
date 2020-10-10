#include <pthread.h>
#include <math.h>
#include <string.h>
#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <errno.h>
#include <ctype.h>
#include <getopt.h>
#include <sys/time.h>

FILE *arq;
int num_threads;
int tam_vet;
long long *vetor_tam;
float mediana;
long long *vetor;
long long *vetor_pivo;
long long *vet_pivoaux;
long long **vet_aux;
long long *vet_ord;

int comparador(const void *a, const void *b)
{
    return (*(int *)a - *(int *)b);
}

void preencheVet()
{
    vetor = (long long *)malloc(sizeof(long long *) * tam_vet);
    srand(time(NULL));

    for (int i = 0; i < tam_vet; i++)
    {
        vetor[i] = rand() % (tam_vet);
    }
}

void divide_vetor()
{
    vetor_tam = (long long *)malloc(sizeof(long long *) * (num_threads));
    int x = tam_vet % num_threads;
    vet_aux = (long long **)malloc(num_threads * sizeof(long long *));
    int k = 0;
    for (int i = 0; i < num_threads; i++)
    {
        if (x > 0)
        {
            x--;
            vetor_tam[i] = (tam_vet / num_threads) + 1;
            vet_aux[i] = (long long *)malloc(((tam_vet / num_threads) + 1) * sizeof(long long));

            for (int j = 0; j < (tam_vet / num_threads) + 1; j++)
            {
                vet_aux[i][j] = vetor[k];
                k++;
            }
            qsort(vet_aux[i], ((tam_vet / num_threads) + 1), sizeof(long long), comparador);
        }
        else
        {
            vetor_tam[i] = (tam_vet / num_threads);
            vet_aux[i] = (long long *)malloc((tam_vet / num_threads) * sizeof(long long));

            for (int j = 0; j < tam_vet / num_threads; j++)
            {
                vet_aux[i][j] = vetor[k];
                k++;
            }
            qsort(vet_aux[i], tam_vet / num_threads, sizeof(long long), comparador);
        }
    }
}

void pivo()
{
    int k = 0;
    int w = 0;
    vetor_pivo = (long long *)malloc(sizeof(long long *) * (num_threads));
    mediana = (float)(tam_vet / num_threads) / num_threads;

    vet_pivoaux = (long long *)malloc(sizeof(long long *) * (num_threads * num_threads));

    for (int i = 0; i < num_threads; i++)
    {
        for (float j = 0; j < vetor_tam[i]; j += mediana)
        {
            vet_pivoaux[k] = vet_aux[i][(int)round(j)];
            k++;
            w++;
            if (w == num_threads)
            {
                w = 0;
                break;
            }
        }
    }
    k = 0;

    qsort(vet_pivoaux, (num_threads * num_threads), sizeof(long long), comparador);

    for (int j = 0; j < (num_threads * num_threads); j += num_threads)
    {
        vetor_pivo[k] = vet_pivoaux[j];
        k++;
    }
}

void ordenacao()
{
    int z = 0;
    vet_ord = (long long *)malloc(sizeof(long long *) * tam_vet);
    for (int k = 0; k < num_threads; k++)
    {
        for (int i = 0; i < num_threads; i++)
        {
            for (int j = 0; j < vetor_tam[i]; j++)
            {
                if (vetor_pivo[k] > vet_aux[i][j] && vet_aux[i][j] != -1)
                {
                    vet_ord[z] = vet_aux[i][j];
                    vet_aux[i][j] = -1;
                    z++;
                }

                else if (vetor_pivo[k] == vetor_pivo[num_threads - 1])
                {
                    if (vet_aux[i][j] != -1)
                    {
                        vet_ord[z] = vet_aux[i][j];
                        vet_aux[i][j] = -1;
                        z++;
                    }
                }
                else
                    break;
            }
            qsort(vet_ord, z, sizeof(long long), comparador);
        }
    }
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
            printf("\nUtilize a flag -n para definir o tamanho do vetor de entrada (EX: -n 300)");
            printf("\nUtilize a flag -a para inserir um arquivo como entrada (EX: -a entrada.txt)\n");
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
    struct timeval begin, end;
    gettimeofday(&begin, 0);
    parametros(argv, argc);
    divide_vetor();
    pivo();
    ordenacao();
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