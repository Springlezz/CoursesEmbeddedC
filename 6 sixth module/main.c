#include <stdio.h>

int main() {
    int task;
    do
    {
        printf("Наберите код с клавиатуры:\n1) Добавить абонента\n2) Удалить абонента\n3) Поиск абонентов по имени\n4) Вывод всех записей\n5) Выход\n");
        scanf("%d", &task);
        switch (task)
        {
        case 1:{
            break;
        }
        case 2:{
            break;
        }
        case 3:{
            break;
        }
        case 4:{
            break;
        }
        case 5:{
            break;
        }
        default:
            printf("Такой кнопки нет\n");
            break;
        }  
    } while (task != 5);
    return 0;
}