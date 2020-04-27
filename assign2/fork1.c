#include<stdio.h>

/*int top=-1,l,t=0;
char str1[10], stack[10], str2[10];
void push(char s){
    top++;
    stack[top] = s;
}
void pop(char s){
    printf("%c",s);
    top--;
}
void pop1(char s){
    str2[t] = s;
    t++;
    top--;
}
int preisp(char c){
    if(c=='+' || c=='-')
        return 1;
    if(c=='*' || c=='/')
        return 3;
    if(c==')')
        return 0;
    if(c=='^')
        return 6;
}
int preicp(char c){
    if(c=='+' || c=='-')
        return 2;
    if(c=='*' || c=='/')
        return 4;
    if(c==')')
        return 100;
    if(c=='^')
        return 5;
}

int postisp(char c){
    if(c=='+' || c=='-')
        return 2;
    if(c=='*' || c=='/')
        return 4;
    if(c=='(')
        return 0;
    if(c=='^')
        return 5;
}
int posticp(char c){
    if(c=='+' || c=='-')
        return 1;
    if(c=='*' || c=='/')
        return 3;
    if(c=='(')
        return 100;
    if(c=='^')
        return 6;
}

prefix(char c[10]){
	int i=0;
	int l = strlen(c);
for(i=l-1;i>=0;i--){
    if(97<=c[i] && c[i]<=122 || 48<=c[i] && c[i]<=57){
        str2[t] = c[i];
        t++;
    }
    if(c[i]==')')
        push(c[i]);
    if(c[i]=='('){
        while(stack[top]!=')')
                pop1(stack[top]);
        top--;
    }
    if(c[i]=='+' || c[i]=='-' || c[i]=='*' || c[i]=='/' || c[i]=='^'){
        if(top!=-1){
            if(preisp(stack[top])>preicp(c[i])){
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
for(i=t-1;i>=0;i--)
    printf("%c",str2[i]);
}

postfix(char c[10]){
	int i,l = strlen(c);
for(i=0;i<=l;i++){
    if(97<=c[i] && c[i]<=122 || 48<=c[i] && c[i]<=57)
        printf("%c",c[i]);
    if(c[i]=='(')
        push(c[i]);
    if(c[i]==')'){
        while(stack[top]!='(')
                pop(stack[top]);
        top--;
    }
    if(c[i]=='+' || c[i]=='-' || c[i]=='*' || c[i]=='/' || c[i]=='^'){
        if(top!=-1){
            if(postisp(stack[top])>posticp(c[i])){
                while(postisp(stack[top])>posticp(c[i]))
                    pop(stack[top]);
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
    pop(stack[top]);
}


*/
void main(){
	//char str[10];
	//gets(str);
	if(fork() == 0)
		if(fork()==0)
			printf("pre\n");
		else
			printf("eval\n");
	else
		printf("post\n");
}
