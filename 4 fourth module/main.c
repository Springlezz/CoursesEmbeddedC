#include <stdio.h>
#define MAX_ABONENTS 100


struct abonent {
    char name[10];
    char second_name[10];
    char tel[10];
};

int str_equal(char string1[], char string2[]) {
    int i = 0;
    while (string1[i] != '\0' && string2[i] != '\0') {
        if (string1[i] != string2[i]){
            return 0;
        }
        i++;
    }
    return string1[i] == '\0' && string2[i] == '\0';
}

int is_empty(struct abonent *ptr) {
    return ptr->name[0] == '\0';
}

void clear_abonent(struct abonent *ptr) {
    ptr->name[0] = '\0';
    ptr->second_name[0] = '\0';
    ptr->tel[0] = '\0';
}

void add_abonent(struct abonent list[]) {
    for (int i = 0; i < MAX_ABONENTS; i++) {
        if (is_empty(&list[i])) {
            printf("Введите имя: ");
            scanf("%s", list[i].name);
            printf("Введите фамилию: ");
            scanf("%s", list[i].second_name);
            printf("Введите номер телефона: ");
            scanf("%s", list[i].tel);
            printf("Имя:%s Фамилия: %s Номер телефона: %s", list[i].name, list[i].second_name, list[i].tel);
            return;
        }
    }
    printf("Справочник переполнен, нельзя добавить свыше 100 записей\n");
}
void print_all(struct abonent list[]) {
    int empty = 1;
    for (int i = 0; i < MAX_ABONENTS; i++) {
        if (!is_empty(&list[i])) {
            printf("%d %s %s %s\n", i + 1, list[i].name, list[i].second_name, list[i].tel);
            empty = 0;
        }
    }
    if (empty){
        printf("Справочник пуст\n");
    }
}
void delete_abonent(struct abonent list[]) {
    char name[125];
    char second_name[125];
    printf("Введите имя абонента для удаления: ");
    scanf("%124s", name);
    printf("Введите фамилию абонента: ");
    scanf("%124s", second_name);
    for (int i = 0; i < MAX_ABONENTS; i++) {
        if (!is_empty(&list[i]) && str_equal(list[i].name, name) && str_equal(list[i].second_name, second_name)) {
            clear_abonent(&list[i]);
            printf("Абонент %s %s удалён\n", name, second_name);
            return;
        }
    }
    printf("Абонент не найден.\n");
}

void search_abonent(struct abonent list[]) { //Я не делала приравнивание по символам большим и маленьким
    char search_name[125];
    int found = 0;
    printf("Введите имя для поиска: ");
    scanf("%124s", search_name);
    for (int i = 0; i < MAX_ABONENTS; i++) {
        if (!is_empty(&list[i]) && str_equal(list[i].name, search_name)) {
            printf("%d. %s %s - %s\n", i + 1, list[i].name, list[i].second_name, list[i].tel);
            found = 1;
        }
    }
    if (!found) {
        printf("Абоненты с именем '%s' не найдены.\n", search_name);
    }
}

int main() {
    int task;
    struct abonent list[MAX_ABONENTS] = {0};
    do
    {
        printf("Наберите код с клавиатуры:\n1) Добавить абонента\n2) Удалить абонента\n3) Поиск абонентов по имени\n4) Вывод всех записей\n5) Выход\n");
        scanf("%d", &task);
        switch (task)
        {
        case 1:{
            add_abonent(list);
            break;
        }
        case 2:{
            delete_abonent(list);
            break;
        }
        case 3:{
            search_abonent(list);
            break;
        }
        case 4:{
            print_all(list);
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