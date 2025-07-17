#include <stdio.h>
#include "calculator.h"

int main(void)
{
    int task, a, b;
    do{
        printf("Выберите действие: \n1) Сложение\n2) Вычитание\n3) Умножение\n4) Деление\n5) Выход\n");
        scanf("%d", &task);
        switch (task){
            case (1):{
                printf("Введите первое число: ");
                scanf("%d", &a);
                printf("Введите второе число: ");
                scanf("%d", &b);
                printf("Результат: %d\n", add(a, b));
                break;
            }
            case (2):{
                printf("Введите первое число: ");
                scanf("%d", &a);
                printf("Введите второе число: ");
                scanf("%d", &b);
                printf("Результат: %d\n", sub(a, b));
                break;
            }
            case (3):{
                printf("Введите первое число: ");
                scanf("%d", &a);
                printf("Введите второе число: ");
                scanf("%d", &b);
                printf("Результат: %d\n", mul(a, b));;
                break;
            }
            case (4):{
                if (b == 0){
                    printf("На нуль делить нельзя\n");
                    break;
                }
                printf("Введите первое число: ");
                scanf("%d", &a);
                printf("Введите второе число: ");
                scanf("%d", &b);
                printf("Результат: %d\n", div(a, b));
                break;
            }
            default:{
                printf("Такого действия нет\n");
                break;
            }
        }
    } while (task != 5);
}