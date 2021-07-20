#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <signal.h>

int main(int ac, char **av){
    int pid2;
    int sig;

    if(ac > 1){
        pid2 = atoi(av[1]);
        for(int i = 2; i < ac; i++){
            sig = atoi(av[i]);
            printf("Send Signal to p2 = %d : %d\n", pid2, sig);
            kill(pid2, sig);
        }
    }else{
        printf("args doit sup > 1\n");
    }

    return 0;
}