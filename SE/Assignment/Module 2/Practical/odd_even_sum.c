/* WAP to take 10 no. Input from user find out below values a. How many Even
numbers are there b. How many odd numbers are there c. Sum of even
numbers d. Sum of odd numbers? */

#include<stdio.h>
int main(){
	int i, num;
    int even = 0, odd = 0;
    int evenSum = 0, oddSum = 0;

	printf("Enter 10 Number : ");
    for(i = 1; i <= 10; i++)
    {
        scanf("%d", &num);

        if(num % 2 == 0)
        {
            even++;
            evenSum += num;
        }
        else
        {
            odd++;
            oddSum += num;
        }
    }

    printf("Even Numbers = %d\n", even);
    printf("Odd Numbers = %d\n", odd);
    printf("Sum of Even Numbers = %d\n", evenSum);
    printf("Sum of Odd Numbers = %d\n", oddSum);
}
