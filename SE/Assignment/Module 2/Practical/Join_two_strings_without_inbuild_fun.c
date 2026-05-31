// Join 2 strings using user-defined function without using strcat()

#include<stdio.h>

// Function Definition
void joinString(char str1[], char str2[])
{
    int i = 0, j = 0;

    // Find end of first string
    while(str1[i] != '\0')
    {
        i++;
    }

    // Copy second string to first string
    while(str2[j] != '\0')
    {
        str1[i] = str2[j];
        i++;
        j++;
    }

    // Add null character at end
    str1[i] = '\0';
}

int main()
{
    char str1[100], str2[100];

    printf("Enter First String : ");
    fgets(str1, sizeof(str1), stdin);

    printf("Enter Second String : ");
    fgets(str2, sizeof(str2), stdin);

    // Function Call
    joinString(str1, str2);

    printf("\nJoined String : %s", str1);

    return 0;
}


