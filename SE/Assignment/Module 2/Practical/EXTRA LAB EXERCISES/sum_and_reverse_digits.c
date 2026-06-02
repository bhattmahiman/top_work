/* Write a C program that takes an integer from the user and calculates the sum of its digits
using a while loop.
• Challenge: Extend the program to reverse the digits of the number. */


#include <stdio.h>

int main()
{
    int num, temp, digit;
    int sum = 0, reverse = 0;

    printf("Enter an integer: ");
    scanf("%d", &num);

    temp = num;

    while (temp != 0)
    {
        digit = temp % 10;
        sum = sum + digit;
        reverse = reverse * 10 + digit;
        temp = temp / 10;
    }

    printf("Sum of Digits = %d\n", sum);
    printf("Reversed Number = %d\n", reverse);

    return 0;
}
