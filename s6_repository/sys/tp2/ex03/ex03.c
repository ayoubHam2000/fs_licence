#include <signal.h>
#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>

void program(int time){

    signal(SIGINT, SIG_IGN);
    //printf("pid : %d\n", getpid());
    printf("Attend %d seconde...\n", time);
    sleep(time);
    printf("\nEnd -> press ctrl + c\n");
    signal(SIGINT, SIG_DFL);
    sleep(time);
}

int main(int ac, char **av){

    if(ac > 1){
        program(atoi(av[1]));
    }else{
        printf("Arg : time\n");
    }

    return 0;
}