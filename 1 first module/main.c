#include <stdio.h>

int result;

void task1(unsigned int unum){
    for (int i = 31; i >= 0; i--){
        result = (unum >> i) & 1;
        if (i % 8 == 0 && i != 0) {
            printf(" ");
        }
        printf("%d", result);
    }
}
void task2(int num){
    for (int i = 31; i >= 0; i--){
        result = (num >> i) & 1;
        if (i % 8 == 0 && i != 0) {
            printf(" ");
        }
        printf("%d", result);
    }
    
} 
void task3(int num){
    int counter = 0;
    for (int i = 31; i >= 0; i--){
        result = (num >> i) & 1;
        if (result == 1){
            counter++;
        }
        if (i % 8 == 0 && i != 0) {
            printf(" ");
        }
        printf("%d", result);
    }
    printf("\n");
    printf("Количество единиц: %d", counter);
} 
void task4(unsigned int unum){
    int replace = 0;
    printf("Введите число для замены, 255 - максимальное значение, что помещается в 1 байт: ");
    scanf("%d", &replace);
    if (replace < 0 || replace > 255) {
        printf("Ошибка! введите байт от 0 до 255\n");
        return;
    }
    unum &= ~(0xFF << 24);
    unum |= (replace << 24);
    for (int i = 31; i >= 0; i--){
        result = (unum >> i) & 1;
        printf("%d", result);
        if (i % 8 == 0 && i != 0) {
            printf(" ");
        }
    }
} 

int main() {
    int num;
    unsigned int unum;
    int task;
    printf("Введите номер задачи: ");
    scanf("%d", &task);
    switch (task)
    {
    case (1):
        printf("Введите число: ");
        scanf("%u", &unum);
        task1(unum);
        break;
    case (2):
        printf("Введите число: ");
        scanf("%d", &num);
        if (num < 0){
            task2(num);
        }
        else{
            printf("Число должно быть целым и отрицательным\n");
            break;
        }
        break;
    case (3):
        printf("Введите число: ");
        scanf("%d", &num);
        if (num >= 0){
            task3(num);
        }
        else{
            printf("Число должно быть целым и положительным\n");
            break;
        }
        break;
    case (4):
        printf("Введите число: ");
        scanf("%u", &unum);
        if (unum >= 0){
            task4(unum);
        }
        else{
            printf("Число должно быть целым и положительным\n");
            break;
        }
        break;

    default:
        printf("Такой задачи нет\n");
        break;
    }
    printf("\n");
    return 0;
}

