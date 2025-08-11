#include <stdio.h>
#include <unistd.h>
#include <sys/types.h>
#include <sys/wait.h>
#include <stdlib.h>

int main(){
    pid_t child_pid;
    int status;
    child_pid = fork();
    if (child_pid == 0){
        printf("pid дочернего процесса: %d\nppid дочернего процесса: %d\n", getpid(), getppid());
        exit(5);
    }
    else{
        printf("pid родительского процесса: %d\nppid родительского процесса: %d\n", getpid(), getppid());
        wait(&status);
        printf("status: %d\n", WEXITSTATUS(status));
    }
    return 0;
}