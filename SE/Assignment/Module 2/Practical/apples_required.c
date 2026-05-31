/* Accept number of students from user. I need to give 5 apples to each
student. How many apples are required?  */

#include<stdio.h>
int main(){
	int student;
	
	printf("Enter Number Of Student : ");
	scanf("%d",&student);
	
	printf("\nTotal Apple Required : %d ",student * 5);
}
