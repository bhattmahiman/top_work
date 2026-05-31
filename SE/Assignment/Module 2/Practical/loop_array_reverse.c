/* WAP to accept 5 numbers from user and display in reverse order using for
loop and array */

#include<stdio.h>
int main(){
	int num[5],i;
	for(i=1;i<=5;i++){
		printf("Enter 5 Number : ");
		scanf("%d",&num[i]);
	}
	printf("\nArray is : ");
	for(i=1;i<=5;i++){
		printf("\t %d",num[i]);
	}
	
	printf("\n\n\nArray is in reverse : ");
	
	for(i=5;i>=1;i--){
		printf("\t %d",num[i]);
	}
	
}
