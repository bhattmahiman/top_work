/* Program of Armstrong Number in C Using For Loop & While Loop */

#include<stdio.h>
#include<math.h>
int main(){
	int num,rem,count=0,originalNum,sum=0;
	printf("Enter Number : ");
	scanf("%d",&num);
	originalNum=num;
	while(num!=0){
		rem=num%10;
		count++;
		num=num/10;
	}
	
	num=originalNum;
	
	while(num!=0){
		rem=num%10;
		sum=sum + pow(rem,count);
		num=num/10;
	}
	if(sum==originalNum){
		printf("%d is Armstrong Number",originalNum);
	}
	else{
		printf("%d is NOT Armstorng number",originalNum);
	}
}
