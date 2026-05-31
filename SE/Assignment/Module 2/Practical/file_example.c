/* Write a C program to create a file, write a string into it, close the file, then
open the file again to read and display its contents. */

#include<stdio.h>
int main(){
	char string[100];
	char ch;
	printf("Enter String : ");
	fgets(string,sizeof(string),stdin);
	
	FILE *fp;
	fp=fopen("test.txt","w");
	fprintf(fp,string);
	fclose(fp);
	
	fp=fopen("test.txt","r");
	while((ch=fgetc(fp))!=EOF){
		printf("%c",ch);
	}
	fclose(fp);
	printf("End Of program");
	
}
