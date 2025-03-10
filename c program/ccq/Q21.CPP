#include<stdio.h>
#include<conio.h>
void main()
{
clrscr();
int a[5];
int i,j,k,l;
for(i=0;i<5;i++)
{
printf("enter the number:",i+1);
scanf("%d",&a[i]);
}
for(i=0;i<5;i++)
{
for(j=i+1;j<5;j++)
{
if(a[j]<a[i])
{
k=a[i];
a[i]=a[j];
a[j]=k;
}
}
}
for(i=0;i<5;i++)
{
printf("\n%d",a[i]);
}
//printf("minimum:%d\n",a[4]);
//printf("maximum:%d\n",a[0]);
getch();
}