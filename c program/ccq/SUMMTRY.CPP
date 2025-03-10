#include<stdio.h>
#include<conio.h>
void main()
{
clrscr();
int i;
int a[]={1,2,3,4,5};
for(i=4;i>='\0';i--)
{
printf("\n%d",a[i]);
}
printf("\nminimum =%d",a[0]);
printf("\nmaximum =%d",a[4]);
getch();
}