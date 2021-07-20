#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <errno.h>
#include <sys/wait.h>

//from ch3 ->p03

int main()
{ 
    int p[2];

    if (pipe(p)==-1){ 
        perror("creation du tube");
        exit(2);
    }

    int child = fork();
    
    if(child == -1){
        perror("Fork");
        exit(1);
    }

    if(child == 0){
        close(1);
        dup(p[1]);
        close(p[1]);
        close(p[0]);

        execlp("ps", "ps", "-e", NULL);
        exit(0);
    }else{
        close(0);
        dup(p[0]);
        close(p[0]);
        close(p[1]);

        execlp("wc", "wc", "-l", NULL);
        exit(0);
    }

    return 0;
}