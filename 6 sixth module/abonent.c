#include <stdio.h>
#include <malloc.h>
#include "abonent.h"
//#include <errno.h>
#define MAX_ABONENTS 100

int count = 0;
static struct abonent *head = NULL;
static struct abonent *tail = NULL;

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

void delete_node(struct abonent *node){
    struct abonent *prev = node -> prev;
    struct abonent *next = node -> next;
    prev = node -> prev;
    next = node -> next;
    if (prev != NULL){
        prev -> next = next;
    }
    else{
        head = next;
    }
    if (next != NULL){
        next -> prev = prev;
    }
    else{
        tail = prev;
    }
    free(node);
}

void delete_abonent(char *delete_name, char *delete_secondname, char *delete_tel){
    struct abonent *current_abonent = head;
    if (count == 0){
        printf("Абонент не найден. Справочник пуст. Добавьте абонентов\n");
        return;
    }
    while (current_abonent != NULL) {
        if (str_equal(current_abonent->name, delete_name) && str_equal(current_abonent->second_name, delete_secondname) && str_equal(current_abonent->tel, delete_tel)) {
            printf("Абонент удаляется %s %s\n", delete_name, delete_secondname);
            delete_node(current_abonent);
            count--;
            return;
        }
        else{
            printf("Такого абонента не существует\n");
            return;
        }
        current_abonent = current_abonent -> next;
    }
    printf("Абонент удален\n");
}

void add_abonent(){
    if (count >= MAX_ABONENTS){
        printf("Справочник переполнен, нельзя добавить свыше 100 записей\n");
        return;
    }
    struct abonent *new_abonent = malloc(sizeof(struct abonent));
    //char add_name[125], add_secondname[125], add_tel[125];
    printf("Введите имя: ");
    scanf("%10s", new_abonent->name);
    printf("Введите фамилию: ");
    scanf("%10s", new_abonent->second_name);
    printf("Введите номер телефона: ");
    scanf("%10s", new_abonent->tel);

    new_abonent->next = NULL;
    new_abonent->prev = NULL;
    if (head == NULL) {
        head = new_abonent;
        tail = new_abonent;
    } else {
        tail->next = new_abonent;
        new_abonent->prev = tail;
        tail = new_abonent;
    }
    count++;
}

void print_all(){
    struct abonent *current_abonent = head;
    if (current_abonent == NULL){
        printf("Справочник пуст\n");
        return;
    }
    else{
        while (current_abonent != NULL) {
            printf("%s %s %s\n", current_abonent->name, current_abonent->second_name, current_abonent->tel);
            current_abonent = current_abonent -> next;
        }
    }

}

void search_abonent(char *name, char *secondname){
    struct abonent *current_abonent = head;

    while (current_abonent != NULL) {
        if (str_equal(current_abonent-> name, name) && str_equal(current_abonent->second_name, secondname)) {
            printf("Такой абонент найден: %s %s\n", current_abonent->name, current_abonent->second_name);
            return;
        }
        else{
            current_abonent = current_abonent -> next;
        }    
    }
    printf("Такого абонента нет\n");
}

void free_quit(){
    struct abonent *current_abonent = head;
    while (current_abonent){
        struct abonent *next = current_abonent -> next;
        free(current_abonent);
        current_abonent = next;
    }
    head = NULL;
    tail = NULL;
}