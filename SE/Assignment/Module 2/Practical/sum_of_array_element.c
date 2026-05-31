/* Write a C program that stores 5 integers in a one-dimensional array and prints
them. Extend this to handle a two-dimensional array (3x3 matrix) and
calculate the sum of all elements. */

#include<stdio.h>
int main(){
	int num[5],arr[3][3];
	int i,j,sum;
	
	
	//one-dimensional array
	for(i=0;i<5;i++){
		printf("Enter Element for one-dimensional : ");
		scanf("%d",&num[i]);
	}
	for(i=0;i<5;i++){
		printf("\t %d",num[i]);
	}
	
	//two-dimensional array (3x3 matrix)
	
	for(i=0;i<3;i++){
		for(j=0;j<3;j++){
			printf("\n\n\nEnter Element for two-dimensional array (3x3 matrix) : ");
			scanf("%d",&arr[i][j]);
		}
	}
	
	printf("\n\ntwo-dimensional array (3x3 matrix) is : \n\n");
	
	for(i=0;i<3;i++){
		for(j=0;j<3;j++){
			printf("\t%d",arr[i][j]);
		}
		printf("\n");
	}
	
	//sum of all elements.
	
	for(i=0;i<3;i++){
		for(j=0;j<3;j++){
			sum+=arr[i][j];
		}
	}
	
	printf("\n\n\nSum of two-dimensional array (3x3 matrix) is : %d",sum);
}
