/* Write a C program that implements a simple number guessing game. The program should
generate a random number between 1 and 100, and the user should guess the number
within a limited number of attempts.
• Challenge: Provide hints to the user if the guessed number is too high or too low */

#include <stdio.h>
#include <stdlib.h>
#include <time.h>

int main()
{
    int randomNumber, guess;
    int attempts = 10, i;

    srand(time(0));
    randomNumber = rand() % 100 + 1;

    printf("=== Number Guessing Game ===\n");
    printf("Guess a number between 1 and 100\n");
    printf("You have %d attempts.\n\n", attempts);

    for(i = 1; i <= attempts; i++)
    {
        printf("Attempt %d: Enter your guess: ", i);
        scanf("%d", &guess);

        if(guess == randomNumber)
        {
            printf("\nCongratulations! You guessed the number correctly.\n");
            printf("You took %d attempts.\n", i);
            return 0;
        }
        else if(guess < randomNumber)
        {
            printf("Too Low! Try a higher number.\n\n");
        }
        else
        {
            printf("Too High! Try a lower number.\n\n");
        }
    }

    printf("\nGame Over!\n");
    printf("The correct number was %d\n", randomNumber);

    return 0;
}
