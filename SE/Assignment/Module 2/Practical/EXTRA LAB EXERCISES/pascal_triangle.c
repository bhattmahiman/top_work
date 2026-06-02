/* Write a C program that generates Pascal’s Triangle up to N rows using loops.
• Challenge: Implement the same program using a recursive function. */

#include <stdio.h>

// Recursive function to calculate factorial
int factorial(int n)
{
    if(n == 0 || n == 1)
        return 1;

    return n * factorial(n - 1);
}

// Recursive function to calculate nCr
int nCr(int n, int r)
{
    return factorial(n) / (factorial(r) * factorial(n - r));
}

int main()
{
    int n,num, i, j, space;

    printf("Enter number of rows: ");
    scanf("%d", &n);

    printf("\nPascal's Triangle:\n");

    for(i = 0; i < n; i++)
    {
        for(space = 0; space < n - i - 1; space++)
            printf(" ");

        for(j = 0; j <= i; j++)
        {
            printf("%d ", nCr(i, j));
        }

        printf("\n");
    }
    //Pascal's Triangle Using Loops Only
    printf("\n\n Pascal's Triangle Using Loops Only : \n\n");
    for(i = 0; i < n; i++)
    {
        num = 1;

        for(j = 0; j <= i; j++)
        {
            printf("%d ", num);
            num = num * (i - j) / (j + 1);
        }

        printf("\n");
    }

    return 0;
}
