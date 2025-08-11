#include <stdio.h>
#include <unistd.h>
#include <sys/types.h>
#include <sys/wait.h>
#include <stdlib.h>

//int count_process = 0;
void print_pid(char *name_process){
    printf("%s: pid = %d ppid = %d\n", name_process, getpid(), getppid());
}

int main(){
    int status;
    pid_t pid1, pid2;
    
    pid1 = fork();
    if (pid1 == 0){
        print_pid("Процесс 1");
        pid_t pid3 = fork();
        if (pid3 == 0){
            print_pid("Процесс 3");
            exit(5);
        }

        pid_t pid4 = fork();
        if (pid4 == 0){
            print_pid("Процесс 4");
            exit(5);
        }
        wait(&status);
        wait(&status);  
        exit(5); 
    }

    pid2 = fork();
    if (pid2 == 0){
        print_pid("Процесс 2");
        pid_t pid5 = fork();
        if (pid5 == 0){
            print_pid("Процесс 5");
            exit(5);
        }
        wait(&status);
        wait(&status);  
        exit(5);
    }
    return 0;
}