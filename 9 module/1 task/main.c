#include <stdio.h>
#define STRING_FOR_READ 256
int main(){
    FILE *file_ptr;
    /*char message_read[STRING_FOR_READ];*/
    const char *message = "String from file";
    file_ptr = fopen("output.txt", "w");

    if (file_ptr == NULL){
        perror("Не удалось открыть файл");
        return 1;
    }

    fputs(message, file_ptr);
    fclose(file_ptr);
    printf("Файл успешно записан\nТекст внутри файла в обратном порядке: ");

    file_ptr = fopen("output.txt", "r");

    fseek(file_ptr, 0, SEEK_END);
    long file_size = ftell(file_ptr);

    if (file_ptr){
        /*while (fgets(message_read, STRING_FOR_READ, file_ptr) != NULL){
            printf("%s\n", message);
        }*/
        for (long i = file_size - 1; i >= 0; i--){
            fseek(file_ptr, i, SEEK_SET);
            printf("%c", fgetc(file_ptr));
        }
        printf("\n");
    }
    fclose(file_ptr);
    return 0;
}