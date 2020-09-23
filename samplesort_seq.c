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
float mediana;
int num_pivo;
long long *vetor;
long long *vetor_pivo;
long long *vet_pivoaux;
long long **vet_aux;
long long *vet_ord;

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
    vetor = (long long *)malloc(sizeof(long long *) * tam_vet);
    srand(time(NULL));

    for (int i = 0; i < tam_vet; i++)
    {
        vetor[i] = rand() % (tam_vet);
    }
}

void divide_vetor()
{
    int x = tam_vet % num_threads;
    vet_aux = (long long **)malloc(num_threads * sizeof(long long *));
    int k = 0;
    for (int i = 0; i < num_threads; i++)
    {
        if (x != 0)
        {
            
            vet_aux[i] = (long long *)malloc(((tam_vet / num_threads) + 1 ) * sizeof(long long));
            x--;

            for (int j = 0; j < (tam_vet / num_threads) + 1; j++)
            {
                vet_aux[i][j] = vetor[k];
                k++;
            }
            qsort(vet_aux[i], ((tam_vet / num_threads) + 1), sizeof(long long), comparador);
        }
        else
        {
            vet_aux[i] = (long long *)malloc((tam_vet / num_threads) * sizeof(long long));

            for (int j = 0; j < tam_vet / num_threads; j++)
            {
                vet_aux[i][j] = vetor[k];
                k++;
            }
            qsort(vet_aux[i], tam_vet / num_threads, sizeof(long long), comparador);
        }
    }
    printf("\n---------------\n");
    for (int i = 0; i < num_threads; i++)
    {
        for (int j = 0; j < (tam_vet / num_threads); j++)
        {
            printf(" %d ", vet_aux[i][j]);
        }
        printf("\n");
    }
}

void pivo()
{
    int x = tam_vet % num_threads;
    int k = 0;
    int w = 0;
    vetor_pivo = (long long *)malloc(sizeof(long long *) * (num_threads));
    mediana = (float)(tam_vet / num_threads) / num_threads;

    vet_pivoaux = (long long *)malloc(sizeof(long long *) * (num_threads * num_threads));

    for (int i = 0; i < num_threads; i++)
    {
        if (x != 0)
        {   printf("\nENTROU IF");
            for (float j = 0; j < ((tam_vet / num_threads) + 1); j += mediana)
            {
                printf("\nJ: %f", j);
                vet_pivoaux[k] = vet_aux[i][(int) round(j)];
                printf("\nPIVO: %d", vet_pivoaux[k]);
                k++;
                w++;
                if(w == num_threads){
                    w=0;
                    break;
                }
            }
            x--;
        }
        else
        {   printf("\nENTROU ELSE");
            for (float j = 0; j < (tam_vet / num_threads); j += mediana)
            {
                printf("\nJ: %f", j);
                vet_pivoaux[k] = vet_aux[i][(int) round(j)];
                printf("\nPIVO: %d", vet_pivoaux[k]);
                k++;
            }
        }
    }
    k = 0;

    printf("\nVET AUX PIVO\n");
    for (int j = 0; j < num_threads * num_threads; j++)
        printf(" %d ", vet_pivoaux[j]);
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
    int x = tam_vet % num_threads;
    vet_ord = (long long *)malloc(sizeof(long long *) * tam_vet);
    for (int k = 0; k < num_threads; k++)
    {
        x = tam_vet % num_threads;
        for (int i = 0; i < num_threads; i++)
        {
            if (x != 0)
            {
                x--;
                for (int j = 0; j < ((tam_vet / num_threads) + 1); j++)
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
                    qsort(vet_ord, z, sizeof(long long), comparador);
                }
            }
            else
            {
                for (int j = 0; j < (tam_vet / num_threads); j++)
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
                    qsort(vet_ord, z, sizeof(long long), comparador);
                }
            }
        }
    }
    printf("\nVetor ordenado: \n");
    for (int i = 0; i < tam_vet; i++)
    {
        printf(" %d ", vet_ord[i]);
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
    divide_vetor();
    pivo();
    ordenacao();
}