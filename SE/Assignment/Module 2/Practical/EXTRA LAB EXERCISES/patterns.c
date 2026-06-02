#include <stdio.h>

int main()
{
    int i, j, space, num;
    char ch;

    // Pattern 1: Binary Triangle
    printf("Pattern 1: Binary Triangle\n");
    for(i = 1; i <= 5; i++)
    {
        for(j = 1; j <= i; j++)
        {
            printf("%d ", j % 2);
        }
        printf("\n");
    }

    printf("\n");

    // Pattern 2: Alphabet Triangle
    printf("Pattern 2: Alphabet Triangle\n");
    ch = 'A';
    for(i = 1; i <= 5; i++)
    {
        for(j = 1; j <= i; j++)
        {
            printf("%c ", ch++);
        }
        printf("\n");
    }

    printf("\n");

    // Pattern 3: Star Pyramid
    printf("Pattern 3: Star Pyramid\n");
    for(i = 1; i <= 5; i++)
    {
        for(space = 1; space <= 5 - i; space++)
            printf(" ");

        for(j = 1; j <= (2 * i - 1); j++)
            printf("*");

        printf("\n");
    }

    printf("\n");

    // Pattern 4: Diamond Star Pattern
    printf("Pattern 4: Diamond Star Pattern\n");

	for(i = 1; i <= 5; i++)
	{
    	for(j = 1; j <= i; j++)
    	{
        	printf("* ");
    	}
    	printf("\n");
	}

	for(i = 4; i >= 1; i--)
	{
    	for(j = 1; j <= i; j++)
    	{
        	printf("* ");
    	}
    	printf("\n");
	}

    printf("\n");

    // Pattern 5: Floyd's Triangle
    printf("Pattern 5: Floyd's Triangle\n");
    num = 1;
    for(i = 1; i <= 5; i++)
    {
        for(j = 1; j <= i; j++)
        {
            printf("%d ", num++);
        }
        printf("\n");
    }

    printf("\n");

    // Pattern 6: Alphabet Right Triangle
    printf("Pattern 6: Alphabet Right Triangle\n");
    for(i = 1; i <= 5; i++)
    {
        for(j = 1; j <= i; j++)
        {
            printf("%c ", 'A' + j - 1);
        }
        printf("\n");
    }

    return 0;
}
