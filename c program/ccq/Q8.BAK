#include <stdio.h>
#include <conio.h>
#include <string.h>

void main()
{
clrscr();
char name[100];
char *ptr;

printf("Enter your name in lowercase: ");
scanf("%s", name);

ptr = name;

while (*ptr != '\0') {
if (*ptr >= 'a' && *ptr <= 'z') {
*ptr = *ptr - 32;
}
ptr++;
}

printf("Your name in uppercase: %s\n", name);

getch();
}
