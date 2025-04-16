#include <stdio.h>

int result;

void task1(int num){
    for (int i = 31; i >= 0; i--){
        result = (num >> i) & 1;
        if (i % 8 == 0 && i != 0) {
            printf(" ");
        }
        printf("%d", result);
    }
    printf("\n");
}
void task2(int num){
    for (int i = 31; i >= 0; i--){
        result = (num >> i) & 1;
        printf("%d", result);
    }
    printf("\n");
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
    printf("\n");
} 
void task4(int num){
    
} 

int main() {
    int num;
    int task;
    printf("Введите номер задачи: ");
    scanf("%d", &task);
    switch (task)
    {
    case (1):
        printf("Введите число: ");
        scanf("%d", &num);
        if (num >= 0){
            task1(num);
        }
        else{
            printf("Число должно быть целым и положительным");
            break;
        }
        break;
    case (2):
        printf("Введите число: ");
        scanf("%d", &num);
        if (num < 0){
            task2(num);
        }
        else{
            printf("Число должно быть целым и отрицательным");
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
            printf("Число должно быть целым и положительным");
            break;
        }
        break;
    case (4):
        task4(num);
        break;

    default:
        printf("Такой задачи нет");
        break;
    }
    return 0;
}

