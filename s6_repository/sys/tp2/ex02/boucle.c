#include <stdio.h>
#include <unistd.h>
#include <stdlib.h>
#include <signal.h>

void handler(int sig){
    printf("sig : %d\n", sig);
}

void program(int sig){
    signal(sig, handler);
    printf("pid : %d\n", getpid());
    while(1){
        sleep(1);
        printf("Consuming cycles...\n");
    }
}

int main(int ac, char **av){

    if(ac > 1){
        printf("starting...");
        program(atoi(av[1]));
    }else{
        printf("argument manquant: sig \n");
    }
    return 0;
}