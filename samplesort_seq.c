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
long long int num_threads;
long long int tam_vet;
long double mediana;
long long int num_pivo;
long long int *vetor;
long long int *vetor_pivo;
long long int *vet_pivoaux;
long long int **vet_aux;
long long int *vet_ord;

typedef struct indice
{
    int inicio;
    int fim;
} indice;

int comparador(const void *a, const void *b)
{
    return (*(int *)a - *(int *)b);
}

void preencheVet()
{
    vetor = (long long int *)malloc(sizeof(long long int *) * tam_vet);
    srand(time(NULL));

    for (long long int i = 0; i < tam_vet; i++)
    {
        vetor[i] = rand() % (tam_vet+1);
    }
}

void divide_vetor()
{
    long long int x = tam_vet % num_threads;
    vet_aux = (long long int **)malloc(num_threads * sizeof(long long int *));
    long long int k = 0;
    for (long long int i = 0; i < num_threads; i++)
    {
        if (x != 0)
        {
            vet_aux[i] = (long long int *)malloc(((tam_vet / num_threads) + 1) * sizeof(long long int));
            x--;

            for (long long int j = 0; j < (tam_vet / num_threads) + 1; j++)
            {
                vet_aux[i][j] = vetor[k];
                k++;
            }
            qsort(vet_aux[i], (tam_vet / num_threads) + 1, sizeof(long long int), comparador);
        }
        else
        {
            vet_aux[i] = (long long int *)malloc((tam_vet / num_threads) * sizeof(long long int));

            for (long long int j = 0; j < tam_vet / num_threads; j++)
            {
                vet_aux[i][j] = vetor[k];
                k++;
            }
            qsort(vet_aux[i], tam_vet / num_threads, sizeof(long long int), comparador);
        }
    }
    printf("\n---------------\n");
    for (long long int i = 0; i < num_threads; i++)
    {
        for (long long int j = 0; j < tam_vet / num_threads; j++)
        {
            printf(" %lld ", vet_aux[i][j]);
        }
        printf("\n");
    }
}

void pivo()
{
    long long int x = tam_vet % num_threads;
    long long int k = 0;
    vetor_pivo = (long long int *)malloc(sizeof(long long int *) * (num_threads));
    mediana = (float)(tam_vet / num_threads) / num_threads;

    vet_pivoaux = (long long int *)malloc(sizeof(long long int *) * (num_threads * num_threads));

    for (long long int i = 0; i < num_threads; i++)
    {
        if (x != 0)
        {
            printf("AAAAAAAAAAAAAAAAAAAAAAA");
            for (long double j = 0; j < (tam_vet / num_threads) + 1; j += mediana)
            {
                printf("\nJ: %Lf", j);
                vet_pivoaux[k] = vet_aux[i][(int) round(j)];
                printf("\nPIVO: %lld", vet_pivoaux[k]);
                k++;
            }
            x--;
        }
        else
        {
            for (long double j = 0; j < (tam_vet / num_threads); j += mediana)
            {
                printf("\nJ: %Lf", j);
                vet_pivoaux[k] = vet_aux[i][(long long int) round(j)];
                printf("\nPIVO: %lld", vet_pivoaux[k]);
                k++;
            }
        }
    }
    k = 0;

    printf("\nVET AUX PIVO\n");
    for (long long int j = 0; j < num_threads * num_threads; j++)
        printf(" %lld ", vet_pivoaux[j]);
    qsort(vet_pivoaux, num_threads * num_threads, sizeof(long long int), comparador);

    for (long long int j = 0; j < num_threads * num_threads; j += num_threads)
    {
        vetor_pivo[k] = vet_pivoaux[j];
        k++;
    }
}

void ordenacao()
{
    long long int z = 0;
    long long int x = tam_vet % num_threads;
    vet_ord = (long long int *)malloc(sizeof(long long int *) * tam_vet);
    for (long long int k = 0; k < num_threads; k++)
    {
        x = tam_vet % num_threads;
        for (long long int i = 0; i < num_threads; i++)
        {
            if (x != 0)
            {
                x--;
                for (long long int j = 0; j < (tam_vet / num_threads) + 1; j++)
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
                            z++;
                        }
                    }
                    else
                        break;
                    qsort(vet_ord, z, sizeof(long long int), comparador);
                }
            }
            else
            {
                for (long long int j = 0; j < (tam_vet / num_threads); j++)
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
                            z++;
                        }
                    }
                    else
                        break;
                    qsort(vet_ord, z, sizeof(long long int), comparador);
                }
            }
        }
    }
    printf("\nVetor ordenado: \n");
    for (long long int i = 0; i < tam_vet; i++)
    {
        printf(" %lld ", vet_ord[i]);
    }
    printf("\n");
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
            long long int k = 0;
            int count = 0;

            while (!feof(arq))
            {
                fscanf(arq, "%lld", &k);
                count++;
            }
            rewind(arq);
            vetor = (long long int *)malloc(sizeof(int *) * count);
            while (!feof(arq))
            {
                fscanf(arq, "%lld", &k);
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
    divide_vetor();
    pivo();
    ordenacao();
}