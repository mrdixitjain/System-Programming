#include<stdio.h>

void multiply(int m, int n);

int main(){
	printf("enter numbers: ");
	int n, m;
	scanf("%d%d", &n, &m);
	multiply(m, n);
}
