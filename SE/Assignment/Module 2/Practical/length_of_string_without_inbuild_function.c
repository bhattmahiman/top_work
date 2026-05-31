//Find length of string which is entered by user without using inbuilt function

#include<stdio.h>
#include<string.h>
int main(){
	char str[100];
	int i,len=0;
	
	printf("Enter String : ");
	fgets(str,sizeof(str),stdin);
	
	str[strcspn(str, "\n")] = '\0';
	
	for(i=0;str[i] != '\0';i++){
		len++;
	}
	
	printf("\n\n Length of String : %d",len);
}
