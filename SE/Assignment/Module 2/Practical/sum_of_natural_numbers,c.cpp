#include<stdio.h>
int main(){
	int num,i=1,sum=0;
	printf("Enter Number : ");
	scanf("%d",&num);
	
	while(i<=num){
		sum += i;
		i++;
	}
	printf("\nSum = %d",sum);
}
