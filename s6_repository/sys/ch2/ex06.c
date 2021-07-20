#include <signal.h>
#include <stdio.h>
#include <unistd.h>

void hand(int signum){
    signal(SIGINT, SIG_DFL);
    printf("press again ctrl + c\n");
}

int main(){
    int child = fork();

    if(child == 0){
        int i = 0;
        signal(SIGUSR1, SIG_IGN);
        while(i++ < 4){
            sleep(1);
            printf("child\n");
        }
    }else{
        printf("send SIGUSR1 to child\n");
        kill(child, SIGUSR1);
        sleep(3);
        kill(child, SIGUSR1);
    }

    return 0;
}