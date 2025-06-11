#include <stdio.h>
#define max_string 125
void task1(){
    unsigned int num;
    unsigned int byteInput;
    printf("Введите положительное число: ");
    scanf("%u", &num);
    printf("Введите байт: ");
    scanf("%u", &byteInput);

    unsigned char byte = (unsigned char)byteInput;
    unsigned char *numptr = (unsigned char*)&num;

    numptr[2] = byte;
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
    int array [] = {1, 2, 3, 4, 5, 6, 7, 8, 9, 10};
    int *arrayptr = array;
    for (int i = 0; i < 10; i++){
        printf("%d ", *(arrayptr + i));
    }
    return;
}

char *foundstring(char *string, char *substring) {
    for (int i = 0; string[i] != '\0'; i++) {
        int j = 0;
        while (substring[j] != '\0' && string[i + j] == substring[j]) {
            j++;
        }
        if (substring[j] == '\0') {
            return &string[i]; 
        }
    }
    return NULL;
}
void fixRemovenewline(char *string) {
    for (int i = 0; string[i] != '\0'; i++) {
        if (string[i] == '\n') {
            string[i] = '\0';
            break;
        }
    }
}
void task4() {
    char string[max_string];
    char substring[max_string];
    char *result;

    printf("Введите строку:\n");
    fgets(string, max_string, stdin);
    fixRemovenewline(string);

    printf("Введите подстроку:\n");
    fgets(substring, max_string, stdin);
    fixRemovenewline(substring);

    result = foundstring(string, substring);
    if (result != NULL) {
        printf("Подстрока найдена: \"%s\"\n", result);
    } else {
        result = NULL;
        printf("Подстрока не найдена. Указатель: NULL\n");
        printf("Адрес указателя: %p\n", (void*)result); //поскольку нуль
    }
}

int main() {
    int task;
    printf("Введите номер задачи: ");
    scanf("%d", &task);
    while (getchar() != '\n');//Комментарий мне: очищает память. В общем, после ввода задачи С клавиатуры, остается символ '\n', который остается в памяти и пропускает в 4 задаче первое считывание строки
    switch (task){
        case (1):
            task1();
            break;
        case (2):
            task2();
            break;
        case (3):
            task3();
            break;
        case (4):
            task4();
            break;
        default:
            printf("Такой задачи нет\n");
    }
    return 0;
}