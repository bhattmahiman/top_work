/* Find max element from the array */

#include<stdio.h>
int main(){
	int num;
	printf("Enter Size of an array : ");
	scanf("%d",&num);
	int numbers[num],i,max;
	
	printf("\n\n Array is : \n\n");
	
	for(i=0;i<num;i++){
		printf("Enter Number : ");
		scanf("%d",&numbers[i]);
	}
	max=numbers[0];
	for(i=0;i<num;i++){
		if(numbers[i]>max){
			max=numbers[i];
		}
	}
	printf("\n\nMax value is : %d",max);
}
