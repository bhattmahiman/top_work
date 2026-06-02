/* Write a C program that takes a string as input and reverses it using a function.
• Challenge: Write the program without using built-in string handling functions. */

#include <stdio.h>

void reverseString(char str[])
{
    int i, length = 0;
    char temp;

    // Find length manually
    while(str[length] != '\0')
    {
        length++;
    }

    // Reverse string
    for(i = 0; i < length / 2; i++)
    {
        temp = str[i];
        str[i] = str[length - 1 - i];
        str[length - 1 - i] = temp;
    }
}

int main()
{
    char str[100];

    printf("Enter a string: ");
    scanf("%s", str);

    reverseString(str);

    printf("Reversed String: %s\n", str);

    return 0;
}
