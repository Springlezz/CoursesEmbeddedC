#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <unistd.h>
#include <sys/wait.h>

#define MAX_ARGS 64
#define MAX_INPUT 1024

int bash(){
    int status;
    char *user = getlogin();
    char input[MAX_INPUT];
    char *args[MAX_ARGS];

    while (1){
        //printf("%s$ ", user);
        /*ANSI для цветного вывода, как в консоли
        \033 — escape, m - конец, 1 -жирный, 32 - зеленый*/
        printf("\033[1;32m%s\033[0m$ ", user);
        fflush(stdout);

        if (fgets(input, MAX_INPUT, stdin) == NULL){
            break;
        }

        input[strcspn(input, "\n")] = '\0';

        if (strlen(input) == 0){
            perror("Вы ввели пустую строку");
            continue;
        }

        int args_count = 0;
        char *token = strtok(input, " ");

        while (token != NULL){
            args[args_count] = token;
            args_count++;
            token = strtok(NULL, " ");
        }

        args[args_count] = NULL;

        if (strcmp(args[0], "exit") == 0) {
            printf("Выхожу...\n");
            break;
        }

        pid_t pid = fork();
        if (pid == 0){
            execvp(args[0], args);
            printf("Ошибка: команда '%s' не найдена\n", args[0]);
            exit(1);
        }
        else{
            waitpid(pid, &status, 0);
        }
    }
    return 0;
}
