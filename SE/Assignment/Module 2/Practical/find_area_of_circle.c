#include<stdio.h>
int main(){
	float r,circle,circumference,square,cube;
	printf("Enter Radius : ");
	scanf("%f",&r);
	
	circle=3.14 * r * r;
	circumference= 2 * 3.14 * r;
	square=r * r;
	cube=6 * r * r;
	printf("Area of Circle : %f",circle);
	printf("\nCircumference : %f",circumference);
	printf("\nArea of Squre : %f",square);
	printf("\nArea of Cube : %f",cube);
}
