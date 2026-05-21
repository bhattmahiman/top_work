#include<stdio.h>
int main(){
	float r,area,circ;
	printf("Enter Radius : ");
	scanf("%f",&r);
	
	area=3.14 * r * r;
	circ= 2 * 3.14 * r;
	printf("Area of Circle : %f",area);
	printf("\nCircumference : %f",circ);
}
