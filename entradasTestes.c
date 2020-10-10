#include <math.h>
#include <string.h>
#include <stdlib.h>
#include <stdio.h>
#include <sys/time.h>

long long *vetor;

int main()
{
    vetor = (long long *)malloc(sizeof(long long *) * 5000000000);
    srand(time(NULL));

    for (int i = 0; i < 5000000000; i++)
    {
        vetor[i] = rand() % (5000000000);
        printf(" %lld", vetor[i]);
    }
}