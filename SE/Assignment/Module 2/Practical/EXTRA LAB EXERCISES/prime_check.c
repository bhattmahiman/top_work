/* Write a C program that checks whether a given number is a prime number or not using a for
loop.
• Challenge: Modify the program to print all prime numbers between 1 and a given number */

#include <stdio.h>

int main()
{
    int num, i,j, isPrime = 1;

    printf("Enter a number: ");
    scanf("%d", &num);

    if (num <= 1)
    {
        isPrime = 0;
    }
    else
    {
        for (i = 2; i < num; i++)
        {
            if (num % i == 0)
            {
                isPrime = 0;
                break;
            }
        }
    }

    if (isPrime)
        printf("%d is a Prime Number", num);
    else
        printf("%d is Not a Prime Number", num);
        
    
    printf("\n\nPrime numbers between 1 and %d are:\n", num);

    for (i = 2; i <= num; i++)
    {
        isPrime = 1;

        for (j = 2; j < i; j++)
        {
            if (i % j == 0)
            {
                isPrime = 0;
                break;
            }
        }

        if (isPrime)
        {
            printf("%d ", i);
        }
    }

    return 0;
}
