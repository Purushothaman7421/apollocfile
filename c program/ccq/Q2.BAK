#include <stdio.h>
#include <conio.h>
void main()
{
clrscr();
int numbers[5], i, j, temp, max, min;
printf("Enter 5 numbers:\n");
for (i = 0; i < 5; i++)
{
scanf("%d", &numbers[i]);
}
max = numbers[0];
min = numbers[0];
for (i = 0; i < 4; i++) {
for (j = 0; j < 4 - i; j++) {
if (numbers[j] < numbers[j + 1]) {
temp = numbers[j];
numbers[j] = numbers[j + 1];
numbers[j + 1] = temp;
if (numbers[j] > max) {
max = numbers[j];
}
if (numbers[j + 1] < min)
{
min = numbers[j + 1];
}
}
}
}
printf("Numbers in descending order:\n");
for (i = 0; i < 5; i++) {
printf("%d\n", numbers[i]);
}
printf("Maximum number: %d\n", max);
printf("Minimum number: %d\n", min);
getch();
}