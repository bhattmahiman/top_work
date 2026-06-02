/* Write a C program that counts the number of words in a sentence entered by the user.
• Challenge: Modify the program to find the longest word in the sentence. */

#include <stdio.h>

int main()
{
    char str[200], longest[50];
    int i = 0, words = 0;
    int len = 0, maxLen = 0, j,k;

    printf("Enter a sentence: ");
    fgets(str, sizeof(str), stdin);

    while(str[i] != '\0')
    {
        // Start of a word
        if((i == 0 || str[i - 1] == ' ') &&
           str[i] != ' ' && str[i] != '\n')
        {
            words++;

            len = 0;
            j = i;

            while(str[j] != ' ' &&
                  str[j] != '\n' &&
                  str[j] != '\0')
            {
                len++;
                j++;
            }

            if(len > maxLen)
            {
                maxLen = len;

                for(k = 0; k < len; k++)
                {
                    longest[k] = str[i + k];
                }

                longest[len] = '\0';
            }
        }

        i++;
    }

    printf("\nNumber of Words = %d\n", words);
    printf("Longest Word = %s\n", longest);

    return 0;
}
