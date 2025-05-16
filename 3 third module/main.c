#include <stdio.h>

void task1(){
    unsigned int num;
    unsigned char byte;
    printf("Введите положительное число: ");
    scanf("%u", &num);
    printf("Введите байт: ");
    scanf("%hhu", &byte); //тип для unsigned char
    unsigned char *nump = (unsigned char *)&num;
    nump[2] = byte;
    printf("Результат: %u\n", num);
    printf("В 16-ричной системе: 0x%08X\n", num);
    return;
}

void task2(){
    float x = 5.0;
    printf("x = %f, ", x);
    float y = 6.0;
    printf("y = %f\n", y);
    float *xp = &y; 
    float *yp = &y;
    printf("Результат: %f\n", *xp + *yp);
    return;
}

void task3(){
    
    return;
}

void task4(){
    return;
}


int main() {
    int task;
    printf("Введите номер задачи: ");
    scanf("%d", &task);
    switch (task){
        case (1):
            task1();
            break;
        case (2):
            task2();
            break;
        default:
            printf("Такой задачи нет\n");
            return 0;
    }
    return 0;
}