#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>

int main(){

    int child;
    int des[2];
    
    int p = pipe(des);
    if(p < 0){
        perror("pipe");
        exit(1);
    }

    child = fork();
    if(child < 0){
        perror("fork");
        exit(1);
    }

    if(child == 0){
        close(0);
        dup(des[0]);
        close(des[0]);
        close(des[1]);

        execlp("wc", "wc", "-l", NULL);
        exit(0);
    }else{
        close(1);
        dup(des[1]);
        close(des[1]);
        close(des[0]);

        execlp("ps", "ps", "-A", NULL);
        exit(0);
    }

    return 0;
}