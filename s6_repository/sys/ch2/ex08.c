#include <stdio.h>
#include <unistd.h>
#include <signal.h>


void handler(int sig){
    printf("I'wont die\n");
}

int main(){
    signal(SIGINT, handler); //kill -INT pid
    signal(SIGTERM, handler); //kill -TERM pid
    signal(SIGKILL, handler); //kill -KILL pis
    //but it will not work because kill is an order

    while(1){
        printf("Wasting your cycles %d\n", getpid());
        sleep(1);
    }

    return 0;
}