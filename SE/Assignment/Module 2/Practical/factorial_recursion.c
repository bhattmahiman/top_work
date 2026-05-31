//WAP to find factorial using recursion

#include<stdio.h>

int fact(int num){
	if(num==0 || num==1)// Base Condition
	{
		return 1; 
	}
	else{
		return num * fact(num-1);// Recursive Call
	}
}


int main(){
	int num,i,ans=1;
	printf("Enter Number : ");
	scanf("%d",&num);
	
	printf("factorial using recursion : %d",fact(num));
}
