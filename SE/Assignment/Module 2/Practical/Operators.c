/* Write a C program that accepts two integers from the user and performs
arithmetic, relational, and logical operations on them. Display the results. */

#include<stdio.h>
int main(){
	int num1,num2;
	printf("Enter Number 1 : ");
	scanf("%d",&num1);
	printf("\nEnter Number 2 : ");
	scanf("%d",&num2);
	
	//Arithmetic
	printf("********Arithmetic********");
	printf("\nAddition : %d",num1+num2);
	printf("\nSubtraction : %d",num1-num2);
	printf("\nMultiplication : %d",num1*num2);
	printf("\nDivision : %d",num1/num2);
	printf("\nModulo : %d",num1%num2);
	
	//Relational
	printf("\n\n********Relational********");
	printf("\n\n%d>%d =  %d",num1,num2,num1>num2);
	printf("\n%d<%d =  %d",num1,num2,num1<num2);
	printf("\n%d>=%d =  %d",num1,num2,num1>=num2);
	printf("\n%d<=%d =  %d",num1,num2,num1<=num2);
	printf("\n%d==%d =  %d",num1,num2,num1==num2);
	printf("\n%d!=%d =  %d",num1,num2,num1!=num2);
	
	//Logical
	printf("\n\n********Logical********");
	printf("\n\nLogical AND = %d", num1 && num2);
	printf("\nLogical OR = %d", num1 || num2);
}
