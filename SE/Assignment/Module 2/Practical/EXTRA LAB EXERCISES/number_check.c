/* Write a C program that takes an integer from the user and checks the following using
different operators:
o Whether the number is even or odd.
o Whether the number is positive, negative, or zero.
o Whether the number is a multiple of both 3 and 5. */

#include<stdio.h>
int main(){
	int num;
	
	printf("Enter Number : ");
	scanf("%d",&num);
	
	
	printf("\nThis Number is Even or Odd : ");
	if(num%2==0){
		printf("%d is Even",num);
	}
	else{
		printf("%d is Odd",num);
	}
	printf("\n\n This Number is positive or negative or zero : ");
	
	if(num<0){
		printf("%d is negative",num);
	}
	else if(num>0){
		printf("%d is positive",num);
	}
	else{
		printf("%d is Zero",num);
	}
	
	printf("\n\n This Number is a multiple of both 3 and 5 : ");
	
	if(num%3==0 && num%5==0){
		printf("%d is a multiple of both 3 and 5.",num);
	}
	else{
		printf("%d is NOT a multiple of both 3 and 5.",num);
	}
}
