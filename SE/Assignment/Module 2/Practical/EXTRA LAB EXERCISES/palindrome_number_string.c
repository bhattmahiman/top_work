/* Write a C program that takes a number as input and checks whether it is a palindrome using
a function.
• Challenge: Modify the program to check if a given string is a palindrome. */

#include <stdio.h>
#include <string.h>

// Function to check palindrome number
int isPalindromeNumber(int num)
{
    int original, reverse = 0, digit;

    original = num;

    while(num > 0)
    {
        digit = num % 10;
        reverse = reverse * 10 + digit;
        num = num / 10;
    }

    return (original == reverse);
}

// Function to check palindrome string
int isPalindromeString(char str[])
{
    int start = 0;
    int end = strlen(str) - 1;

    while(start < end)
    {
        if(str[start] != str[end])
            return 0;

        start++;
        end--;
    }

    return 1;
}

int main()
{
    int num;
    char str[100];

    // Palindrome Number
    printf("Enter a number: ");
    scanf("%d", &num);

    if(isPalindromeNumber(num))
        printf("%d is a Palindrome Number\n", num);
    else
        printf("%d is Not a Palindrome Number\n", num);

    // Palindrome String
    printf("\nEnter a string: ");
    scanf("%s", str);

    if(isPalindromeString(str))
        printf("%s is a Palindrome String\n", str);
    else
        printf("%s is Not a Palindrome String\n", str);

    return 0;
}
