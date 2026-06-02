/* Write a C program that calculates the factorial of a given number using a function.
• Challenge: Implement both an iterative and a recursive version of the factorial function and
compare their performance for large numbers */

#include <stdio.h>

// Recursive Function
long long factorialRecursive(int n)
{
    if(n == 0 || n == 1)
        return 1;

    return n * factorialRecursive(n - 1);
}

// Iterative Function
long long factorialIterative(int n)
{
    long long fact = 1;
    int i;

    for(i = 1; i <= n; i++)
    {
        fact *= i;
    }

    return fact;
}

int main()
{
    int n;

    printf("Enter a number: ");
    scanf("%d", &n);

    printf("\nFactorial using Iterative Method = %lld\n",
           factorialIterative(n));

    printf("Factorial using Recursive Method = %lld\n",
           factorialRecursive(n));

    return 0;
}
