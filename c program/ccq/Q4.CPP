#include<stdio.h>
#include<conio.h>
#include<string.h>
void main()
{
char wrds(char w1[],char w2[]);
char w1[20];
char w2[20];
clrscr();
printf("\nEnter the first word:");
gets(w1);
printf("\nEnter the second word:");
gets(w2);
wrds(w1,w2);
getch();
}
char wrds(char w1[],char w2[])
{
int c,d,e;
e=strcmp(w1,w2);
if(e==0)
{
printf("\n The two words are same");
}
else
{
printf("\n Thw words are different");
}
}