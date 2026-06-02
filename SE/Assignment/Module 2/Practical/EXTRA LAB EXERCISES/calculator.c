/* Write a C program that acts as a simple calculator. The program should take two numbers
and an operator as input from the user and perform the respective operation (addition,
subtraction, multiplication, division, or modulus) using operators */

#include<stdio.h>
int main(){
	int num1,num2;
	char choice;
	
	printf("Enter Number 1 : ");
	scanf("%d",&num1);
	
	printf("\nEnter Number 2 : ");
	scanf("%d",&num2);
	
	printf("\nEnter choice (+,-,/,*,%) :  ");
	scanf(" %c",&choice);
	
	switch(choice)
	{
		case '+':
			printf("Result = %d",num1+num2);
			break;
		case '-':
			printf("Result = %d",num1-num2);
			break;
		case '/':{
			if(num2!=0){
				printf("Result = %d",num1/num2);
			}
			else{
				printf("Division by zero is not possible");
			}
			break;
		}
		case '*':
			printf("Result = %d",num1*num2);
			break;
		case '%':{
			if(num2!=0){
				printf("Result = %d",num1%num2);
			}
			else{
				printf("Modulus by zero is not possible");
			}
			break;
		}
		default:
            printf("Invalid Operator! Please enter +, -, *, /, or %.");
	}
}
