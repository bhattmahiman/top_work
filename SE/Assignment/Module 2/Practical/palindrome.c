//WAP to reverse a string and check that the string is palindrome or no

//Accept string from user and check it is palindrome or not

#include<stdio.h>
#include<string.h>
int main(){
	char stmt[100],string[100];
	
	printf("Enter String : ");
	gets(stmt);
	
	printf("\n\n %s",stmt);
	strcpy(string,stmt);
	
	strrev(stmt);
	printf("\n %s",stmt);
	
	if(strcmp(string,stmt)==0){
    	printf("\n%s is palindrome",string);
	}
	else{
    	printf("\n%s is not palindrome",string);
	}
}
