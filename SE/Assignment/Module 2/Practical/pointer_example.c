/* Write a C program to demonstrate pointer usage. Use a pointer to modify the
value of a variable and print the result. */

#include<stdio.h>
int testValue(int *num)
{
	*num=*num+5;
	return *num;
}
int main(){
	int no=10;
	testValue(&no);
	printf("Modified Value is : %d ",no);
}
