#include <signal.h>
#include <stdio.h>
#include <unistd.h>

void hand(int signum){
    signal(SIGINT, SIG_DFL);
    printf("press again ctrl + c\n");
}

int main(){
    signal(SIGINT, hand);
    while(1){
        sleep(1);
        printf("running...\n");
    }
    return 0;
}