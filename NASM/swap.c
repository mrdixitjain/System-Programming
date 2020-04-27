#include<stdio.h>
#include <inttypes.h>

int swap(int *a, int *b);

void main()
{
	int a,b;
	printf("enter numbers to swap: ");
	scanf("%d%d",&a,&b);
	int k=swap(&a,&b);
	printf("%d,%d",a,b);
}
