#include<stdio.h>

int top=-1,l,t=0;
char str1[10], stack[10], str2[10], post[10];
void push(char s)
{
    top++;
    stack[top] = s;
}

void pop1(char s)
{
    str2[t] = s;
    t++;
    top--;
}
int preisp(char c)
{
    if(c=='+' || c=='-')
        return 1;
    if(c=='*' || c=='/')
        return 3;
    if(c==')')
        return 0;
    if(c=='^')
        return 6;
}
int preicp(char c)
{
    if(c=='+' || c=='-')
        return 2;
    if(c=='*' || c=='/')
        return 4;
    if(c==')')
        return 100;
    if(c=='^')
        return 5;
}

int postisp(char c)
{
    if(c=='+' || c=='-')
        return 2;
    if(c=='*' || c=='/')
        return 4;
    if(c=='(')
        return 0;
    if(c=='^')
        return 5;
}
int posticp(char c)
{
    if(c=='+' || c=='-')
        return 1;
    if(c=='*' || c=='/')
        return 3;
    if(c=='(')
        return 100;
    if(c=='^')
        return 6;
}


// prefix//
prefix(char c[10])
{
	int i=0;
	int l = strlen(c);
for(i=l-1;i>=0;i--)
{
    if(97<=c[i] && c[i]<=122 || 48<=c[i] && c[i]<=57)
    {
        str2[t] = c[i];
        t++;
    }
    if(c[i]==')')
        push(c[i]);
    if(c[i]=='(')
    {
        while(stack[top]!=')')
                pop1(stack[top]);
        top--;
    }
    if(c[i]=='+' || c[i]=='-' || c[i]=='*' || c[i]=='/' || c[i]=='^')
    {
        if(top!=-1)
	{
            if(preisp(stack[top])>preicp(c[i]))
	    {
                while(preisp(stack[top])>preicp(c[i]))
                    pop1(stack[top]);
                push(c[i]);
            }
            else
                push(c[i]);
        }
        else
            push(c[i]);
    }

}
while(top!=-1)
    pop1(stack[top]);
printf("infix: ");
for(i=t-1;i>=0;i--)
    printf("%c",str2[i]);
printf("\n");
}


// postfix //
char *postfix(char c[10])
{
	int i,t=0,l = strlen(c);
for(i=0;i<=l;i++)
{
    if(97<=c[i] && c[i]<=122 || 48<=c[i] && c[i]<=57)
    {
        post[t]=c[i];
        t++;
    }
    if(c[i]=='(')
        push(c[i]);
    if(c[i]==')')
    {
        while(stack[top]!='(')
	{
                post[t]=stack[top];
        		t++;
        		top--;
        }
        top--;
    }
    if(c[i]=='+' || c[i]=='-' || c[i]=='*' || c[i]=='/' || c[i]=='^')
    {
        if(top!=-1)
	{
            if(postisp(stack[top])>posticp(c[i]))
	    {
                while(postisp(stack[top])>posticp(c[i]))
		{
                post[t]=stack[top];
        		t++;
        		top--;
        	}
                push(c[i]);
            }
            else
                push(c[i]);
        }
        else
            push(c[i]);
    }

}
while(top!=-1)
{
                post[t]=stack[top];
        		t++;
        		top--;
}        
}

infixeval(char c[10])
{
	if(strlen(post)==0)
		postfix(c);
	int k=-1, i=0;
	int l = strlen(post);
	int d[10];
	while(i<l)
	{
		if(post[i]=='+')
		{
			d[k-1] = d[k-1] + d[k];
			k--;
		}
		else if(post[i]=='-')
		{
			d[k-1] = d[k-1] - d[k];
			k--;
		}
		else if(post[i]=='*')
		{
			d[k-1] = d[k-1]*d[k];
			k--;
		}
		else if(post[i]=='/')
		{
			d[k-1] = d[k-1]/d[k];
			k--;
		}
		else if(post[i]=='%')
		{
			d[k-1] = d[k-1]%d[k];
			k--;
		}	
		else
		{
			k++;
			d[k]=(int)(post[i]-'0');
		}
		i++;
	}
	printf("evalution: %d\n", d[0]);
}


void main()
{
	char str[10];
	gets(str);
	
	if(fork() == 0)
		if(fork()==0)
			prefix(str);
		else
			infixeval(str);
	else
	{
		int i = 0;
		char s[10];
		if(strlen(post)==0)
			postfix(str);
		printf("postfix: ");
		while(i<strlen(post))
		{
			printf("%c", post[i]);
			i++;
		}
		printf("\n");
	}
}
