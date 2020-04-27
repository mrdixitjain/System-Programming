#include<stdio.h>

int _add(int a, int b);
int _sub();
int _mul();

void main(){
	int a,b;
	printf("enter a,b: ");
	scanf("%d%d",&a,&b);
	int ans = _add(a,b);
	printf("a+b=%d\n",ans);
	ans = _sub();
	printf("a-b=%d\n",ans);
	ans = _mul();
	printf("a*b=%d\n",ans);
}
