#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <signal.h>

void program(int pid, int sig){
    kill(pid, sig);
}

int main(int ac, char **av){

    if(ac > 2){
        program( atoi(av[1]), atoi(av[2]) );
    }else{
        printf("Arguments : pid sig\n");
    }

    return 0;
}