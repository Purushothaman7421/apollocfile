#include <stdio.h>
#include<conio.h>

struct salary
{
float basic;
float hra;
float da;
float insurance;
float tax;
};

void main()
{
clrscr();
struct salary s;

printf("Enter basic salary: ");
scanf("%f", &s.basic);

printf("Enter HRA (as a percentage): ");
scanf("%f", &s.hra);
s.hra = (s.hra / 100) * s.basic;

printf("Enter DA (as a percentage): ");
scanf("%f", &s.da);
s.da = (s.da / 100) * s.basic;

printf("Enter insurance: ");
scanf("%f", &s.insurance);

printf("Enter tax (as a percentage): ");
scanf("%f", &s.tax);
s.tax = (s.tax / 100) * s.basic;

float gross = s.basic + s.hra + s.da + s.insurance;
float net = gross - s.tax;

printf("Gross salary: %.2f\n", gross);
printf("Net salary: %.2f\n", net);

getch();
}
