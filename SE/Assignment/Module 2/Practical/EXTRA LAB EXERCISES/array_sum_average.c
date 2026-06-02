/* Write a C program that takes N numbers from the user and stores them in an array. The
program should then calculate and display the sum of all array elements.
• Challenge: Modify the program to also find the average of the numbers.*/

#include <stdio.h>

int main()
{
    int n, i;
    int arr[100];
    int sum = 0;
    float average;

    printf("Enter the number of elements: ");
    scanf("%d", &n);

    printf("Enter %d numbers:\n", n);

    for(i = 0; i < n; i++)
    {
        scanf("%d", &arr[i]);
        sum += arr[i];
    }

    average = (float)sum / n;

    printf("\nSum = %d\n", sum);
    printf("Average = %.2f\n", average);

    return 0;
}
