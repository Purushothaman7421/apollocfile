#include <stdio.h>
#include <conio.h>
#include <string.h>
void  main()
{
clrscr();
char name[5][100];
int i, j;
char temp;
printf("Enter 5 names: ");
for (i = 0; i < 5; i++)
{
scanf("%s", name[i]);
}
for (i = 0; i < 5; i++) {
int len = strlen(name[i]);
for (j = 0; j < len / 2; j++) {
temp = name[i][j];
name[i][j] = name[i][len - j - 1];
name[i][len - j - 1] = temp;
}
}
printf("Reversed names: ");
for (i = 0; i < 5; i++) {
printf("%s\n", name[i]);
}
getch();
}
