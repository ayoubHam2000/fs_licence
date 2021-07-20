#include <stdlib.h>
#include <unistd.h>
#include <stdio.h>
#include <sys/wait.h>
#include <errno.h>
#include <sys/types.h>

int main(int ac, char **av){

    int pipefd[2];
    pipe(pipefd);

    int child1 = fork();
    int child2 = fork();

    int status;


    if(child1 == 0){
        close(0);
        close(pipefd[1]);
        //dup2(pipefd[0], STDIN_FILENO);
        dup(pipefd[0]);
        close(pipefd[0]);
        execlp(av[2], av[2], NULL);
    }
    if(child2 == 0){
        close(1);
        close(pipefd[0]);
        //dup2(pipefd[1], STDOUT_FILENO);
        dup(pipefd[1]);
        close(pipefd[1]);
        execlp(av[1], av[1], NULL);
    }
    close(pipefd[0]);
    close(pipefd[1]);


    waitpid(-1, &status, 0);
    waitpid(-1, &status, 0);

}