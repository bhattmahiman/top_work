/* Write a C program that generates the Fibonacci sequence up to N terms using a recursive
function.
• Challenge: Modify the program to calculate the Nth Fibonacci number using both iterative
and recursive methods. Compare their efficiency */


#include <stdio.h>

// Recursive function
int fibonacciRecursive(int n)
{
    if(n == 0)
        return 0;
    if(n == 1)
        return 1;

    return fibonacciRecursive(n - 1) + fibonacciRecursive(n - 2);
}

// Iterative function
int fibonacciIterative(int n)
{
    int a = 0, b = 1, c, i;

    if(n == 0)
        return 0;
    if(n == 1)
        return 1;

    for(i = 2; i <= n; i++)
    {
        c = a + b;
        a = b;
        b = c;
    }

    return b;
}

int main()
{
    int n, i;

    printf("Enter number of terms: ");
    scanf("%d", &n);

    printf("\nFibonacci Series (Recursive):\n");

    for(i = 0; i < n; i++)
    {
        printf("%d ", fibonacciRecursive(i));
    }
    
    printf("\nFibonacci Series (Iterative):\n");

    for(i = 0; i < n; i++)
    {
        printf("%d ", fibonacciIterative(i));
    }

    printf("\n\nNth Fibonacci Number:\n");
    printf("Recursive Method = %d\n", fibonacciRecursive(n - 1));
    printf("Iterative Method = %d\n", fibonacciIterative(n - 1));

    return 0;
}
