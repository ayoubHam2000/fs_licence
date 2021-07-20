#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <signal.h>

int count = 0;

void handler(int sig){
    count++;
    printf("Receive Sig %d | count = %d\n", sig, count);
}

int main(int ac, char **av){

    int child = fork();

    if(child == 0){
        int i;

        i = 1;
        while(i < ac){
            int sig = atoi(av[i]);
            printf("Send Signal %d\n", sig);
            kill(getppid(), sig);
            i++;
        }
    }else{
        printf("My Pid is : %d\n", getpid());
        printf("Child pid : %d\n", child);
        for(int i = 1; i < 65; i++){
            if(i != SIGINT && i != 9 && i != 19 && i != 32 && i != 33)
                signal(i, handler);
        }
        while(1){
            signal(SIGQUIT, SIG_IGN);
            sleep(30);
            signal(SIGQUIT, SIG_DFL);
            printf("Count %d\n", count);
            sleep(10);

        }

    }

    return 0;
}