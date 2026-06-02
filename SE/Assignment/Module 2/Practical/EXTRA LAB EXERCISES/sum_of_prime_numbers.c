/* Description: Write a C program that calculates the sum of all prime numbers up to a given
number N.
• Challenge: Extend the program to find and print all the prime numbers found. */

#include <stdio.h>

int main()
{
    int N, i, j, isPrime;
    int sum = 0;

    printf("Enter a number N: ");
    scanf("%d", &N);

    printf("\nPrime Numbers between 1 and %d are:\n", N);

    for(i = 2; i <= N; i++)
    {
        isPrime = 1;

        for(j = 2; j < i; j++)
        {
            if(i % j == 0)
            {
                isPrime = 0;
                break;
            }
        }

        if(isPrime)
        {
            printf("%d ", i);
            sum += i;
        }
    }

    printf("\n\nSum of Prime Numbers = %d\n", sum);

    return 0;
}
