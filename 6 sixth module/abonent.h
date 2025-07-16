#ifndef ABONENT
#define ABONENT

struct abonent {
    char name [10];
    char second_name [10];
    char tel [10];
    struct abonent *next;
    struct abonent *prev;
};

void add_abonent();
void free_quit();
void print_all();
void search_abonent(char *name, char *secondname);
void delete_abonent();

#endif