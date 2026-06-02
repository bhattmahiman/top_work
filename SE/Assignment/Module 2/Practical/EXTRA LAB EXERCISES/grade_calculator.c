/* Write a C program that takes the marks of a student as input and displays the corresponding
grade based on the following conditions:
o Marks > 90: Grade A
o Marks > 75 and <= 90: Grade B
o Marks > 50 and <= 75: Grade C
o Marks <= 50: Grade D
 */

#include<stdio.h>

int main()
{
    int marks;

    printf("Enter Marks : ");
    scanf("%d", &marks);

    if(marks <= 0 || marks > 100)
	{
    	printf("Invalid Marks");
	}
	else if(marks > 90)
	{
    	printf("Grade A");
	}
	else if(marks > 75)
	{
    	printf("Grade B");
	}
	else if(marks > 50)
	{	
    	printf("Grade C");
	}
	else
	{
    	printf("Grade D");
	}

    return 0;
}
