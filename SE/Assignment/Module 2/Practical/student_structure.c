/* Write a C program that defines a structure to store a student's details (name,
roll number, and marks). Use an array of structures to store details of 3
students and print them. */

#include<stdio.h>

struct student{
	char name[200];
	int roll_no;
	int marks;
}student;

int main(){
	struct student s[3];
	int i;
	for(i=0;i<3;i++){
		printf("\nEnter Name : ");
		scanf("%s",s[i].name);
		
		printf("\nEnter Roll Number : ");
		scanf("%d",&s[i].roll_no);
		
		printf("\nEnter Marks : ");
		scanf("%d",&s[i].marks);
	}
	printf("\n----------------------------------------------");
	printf("\nName\t\tRoll No\t\tMarks");
	printf("\n----------------------------------------------");

	for(i = 0; i < 3; i++)
	{
    	printf("\n%s\t\t %d\t\t %d",
           s[i].name,
           s[i].roll_no,
           s[i].marks);
	}

	printf("\n----------------------------------------------");
}
