//Convert array into asce and dec order

#include<stdio.h>
int main(){
	int num,i,j,temp;
	printf("Enter Size of an array : ");
	scanf("%d",&num);
	int numbers[num];
	
	for(i=0;i<num;i++){
		printf("Enter Number : ");
		scanf("%d",&numbers[i]);
	}
	
	printf("\n\nArray is : \n\n");
	
	for(i=0;i<num;i++){
		printf("\t%d",numbers[i]);	
	}
	
	//Ascr order array
	
	for(i = 0; i < num - 1; i++)
    {
        for(j = i + 1; j < num; j++)
        {
            if(numbers[i] > numbers[j])
            {
                temp = numbers[i];
                numbers[i] = numbers[j];
                numbers[j] = temp;
            }
        }
    }

    printf("\n\nAscending Order : \n\n");
    
    for(i = 0; i < num; i++)
    {
        printf("\t%d", numbers[i]);
    }
	
	//dec order array
	
	printf("\n\nDescending Order : \n\n");

    for(i = num - 1; i >= 0; i--)
    {
        printf("\t%d", numbers[i]);
    }
}
