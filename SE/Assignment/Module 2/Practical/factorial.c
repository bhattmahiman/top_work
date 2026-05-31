/* Write a C program that calculates the factorial of a number using a function
Include function declaration, definition, and call. */

#include<stdio.h>

int fact(int num){
	int i,fact=1;
	for(i=1;i<=num;i++){
		fact=fact*i;
	}
	return fact;
}

int main(){
	int num,ans;
	
	printf("Enter Number : ");
	scanf("%d",&num);
	
	ans=fact(num);
	
	printf("factorial : %d",ans);
}
