/* Write a C program that takes two strings from the user and concatenates them
using strcat(). Display the concatenated string and its length using
strlen(). */

#include<stdio.h>
#include<string.h>
int main(){
	char firstname[20], lastname[20];

    printf("Enter First Name : ");
    fgets(firstname, sizeof(firstname), stdin);

    printf("Enter Last Name : ");
    fgets(lastname, sizeof(lastname), stdin);
    
    firstname[strcspn(firstname, "\n")] = '\0';
	lastname[strcspn(lastname, "\n")] = '\0';


    printf("\nFirst Name : %s", firstname);
    printf("Last Name : %s", lastname);

    strcat(firstname, " ");
	strcat(firstname, lastname);

    printf("\nConcatenated String : %s", firstname);

    printf("\nLength of String : %d", strlen(firstname));
	
}
