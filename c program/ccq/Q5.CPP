#include <stdio.h>
#include<conio.h>
#include <string.h>
void main()
{
clrscr();
char str[100];
char *ptr1, *ptr2;
printf("Enter a string: ");
scanf("%s", str);
ptr1 = str;
ptr2 = str + strlen(str) - 1;
while (ptr1 < ptr2)
{
if (*ptr1 != *ptr2)
{
printf("%s is not a palindrome\n", str);
getch();
break;
}

else
printf("%s is a palindrome\n", str);
break;
}
getch();
}
