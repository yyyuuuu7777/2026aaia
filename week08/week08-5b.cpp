//week08-5b.cpp SOLT107_BASE011
#include <stdio.h>
int main()
{
	int a, b;
	char c;
	scanf("%d %c %d", &a, &c, &b);
	if(c=='+') printf("%d", a+b);
	if(c=='-') printf("%d", a-b);
	if(c=='*') printf("%d", a*b);
	if(c=='/') printf("%d", a/b);
}
