/*Write a C program that accepts two 2x2 matrices from the user and adds them. Display the
resultant matrix.
• Challenge: Extend the program to work with 3x3 matrices and matrix multiplication.*/

#include <stdio.h>

int main()
{
    int a[3][3], b[3][3], sum[3][3], mul[3][3];
    int i, j, k;

    printf("Enter elements of First Matrix (3x3):\n");
    for(i = 0; i < 3; i++)
    {
        for(j = 0; j < 3; j++)
        {
            scanf("%d", &a[i][j]);
        }
    }

    printf("Enter elements of Second Matrix (3x3):\n");
    for(i = 0; i < 3; i++)
    {
        for(j = 0; j < 3; j++)
        {
            scanf("%d", &b[i][j]);
        }
    }

    // Matrix Addition
    for(i = 0; i < 3; i++)
    {
        for(j = 0; j < 3; j++)
        {
            sum[i][j] = a[i][j] + b[i][j];
        }
    }

    printf("\nAddition of Matrices:\n");
    for(i = 0; i < 3; i++)
    {
        for(j = 0; j < 3; j++)
        {
            printf("%d\t", sum[i][j]);
        }
        printf("\n");
    }

    // Matrix Multiplication
    for(i = 0; i < 3; i++)
    {
        for(j = 0; j < 3; j++)
        {
            mul[i][j] = 0;

            for(k = 0; k < 3; k++)
            {
                mul[i][j] += a[i][k] * b[k][j];
            }
        }
    }

    printf("\nMultiplication of Matrices:\n");
    for(i = 0; i < 3; i++)
    {
        for(j = 0; j < 3; j++)
        {
            printf("%d\t", mul[i][j]);
        }
        printf("\n");
    }

    return 0;
}
