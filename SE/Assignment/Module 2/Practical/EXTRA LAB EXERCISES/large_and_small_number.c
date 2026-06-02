/* Write a C program that takes three numbers from the user and determines:
o The largest number.
o The smallest number.
• Challenge: Solve the problem using both if-else and switch-case statements. */

#include <stdio.h>

int main()
{
    int num1, num2, num3;
    int largest, smallest;

    printf("Enter three numbers: ");
    scanf("%d %d %d", &num1, &num2, &num3);

    // Find largest number
    if (num1 >= num2 && num1 >= num3)
        largest = num1;
    else if (num2 >= num1 && num2 >= num3)
        largest = num2;
    else
        largest = num3;

    // Find smallest number
    if (num1 <= num2 && num1 <= num3)
        smallest = num1;
    else if (num2 <= num1 && num2 <= num3)
        smallest = num2;
    else
        smallest = num3;

    printf("Largest Number = %d\n", largest);
    printf("Smallest Number = %d\n", smallest);

    return 0;
}
