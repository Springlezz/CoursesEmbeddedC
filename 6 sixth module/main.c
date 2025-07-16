#include <stdio.h>
#include <malloc.h> 
#include "abonent.h"

int main() {
    int task;
    do
    {
        printf("Наберите код с клавиатуры:\n1) Добавить абонента\n2) Удалить абонента\n3) Поиск абонентов по имени\n4) Вывод всех записей\n5) Выход\n");
        scanf("%d", &task);
        switch (task)
        {
        case 1:{
            add_abonent();
            break;
        }
        case 2:{
            char delete_name[10], delete_secondname[10], delete_tel[10];
            printf("Введите имя: ");
            scanf("%s", delete_name);
            printf("Введите фамилию: ");
            scanf("%s", delete_secondname);
            printf("Введите номер телефона: ");
            scanf("%s", delete_tel);
            delete_abonent(delete_name, delete_secondname, delete_tel);
            break;
        }
        case 3:{
            char search_name[10], search_secondname[10];
            printf("Введите имя: ");
            scanf("%s", search_name);
            printf("Введите фамилию: ");
            scanf("%s", search_secondname);
            search_abonent(search_name, search_secondname);
            break;
        }
        case 4:{
            print_all();
            break;
        }
        case 5:{
            free_quit();
            break;
        }
        default:
            perror("Такой кнопки нет\n");
            break;
        }  
    } while (task != 5);
    return 0;
}