/* Write a program to find out the max from given number (E.g., No: -1562 Max number is 6) */

#include <stdio.h>

int main()
{
    int num, digit, max = 0;

    printf("Enter a number: ");
    scanf("%d", &num);

    // Handle negative numbers
    if(num < 0)
        num = -num;

    while(num > 0)
    {
        digit = num % 10;

        if(digit > max)
            max = digit;

        num = num / 10;
    }

    printf("Maximum Digit = %d", max);

    return 0;
}
