/* Write a C program that checks whether a given number is an Armstrong number or not (e.g.,
153 = 1^3 + 5^3 + 3^3).
• Challenge: Write a program to find all Armstrong numbers between 1 and 1000. */

#include <stdio.h>

int main()
{
    int num, temp, digit, sum;

    printf("Enter a number: ");
    scanf("%d", &num);

    temp = num;
    sum = 0;

    while(temp > 0)
    {
        digit = temp % 10;
        sum += digit * digit * digit;
        temp /= 10;
    }

    if(sum == num)
        printf("%d is an Armstrong Number\n", num);
    else
        printf("%d is Not an Armstrong Number\n", num);

    printf("\nArmstrong Numbers between 1 and 1000 are:\n");

    for(num = 1; num <= 1000; num++)
    {
        temp = num;
        sum = 0;

        while(temp > 0)
        {
            digit = temp % 10;
            sum += digit * digit * digit;
            temp /= 10;
        }

        if(sum == num)
        {
            printf("%d ", num);
        }
    }

    return 0;
}
