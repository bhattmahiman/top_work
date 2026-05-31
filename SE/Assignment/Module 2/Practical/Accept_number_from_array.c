//Accept number from user store in array


#include<stdio.h>
int main(){
	int num;
	printf("Enter number of row/column : ");
	scanf("%d",&num);
	int matrix[num][num],i,j;
	for(i=0;i<num;i++){
		for(j=0;j<num;j++){
			printf("\nEnter Element :  ");
			scanf("%d",&matrix[i][j]);
		}
	}
	for(i=0;i<num;i++){
		for(j=0;j<num;j++){
			printf("\t%d",matrix[i][j]);
		}
		printf("\n");
	}
}
