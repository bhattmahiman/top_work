//Write a C program to calculate profit and loss on a transaction

#include<stdio.h>
int main(){
	float cp,sp;
	
	printf("Enter cost price and selling price: ");
	scanf("%f %f",&cp,&sp);
	
	if(sp>cp){
		printf("Profit : %f",sp - cp);
	}
	else{
		printf("Loss = %.2f", cp - sp);
	}
}
