#include <stdio.h>
#include <signal.h>
#include <unistd.h>

void handler(int sig){
    printf("Signal sent\n");
}

int main(){
    int child = fork();

    if(child == 0){
        int father = getppid();
        int i = 0;
        for(; i < 1; i++){
            printf("child: order my father to do something\n");
            kill(father, SIGUSR1);
            sleep(5);
        }
    }else{
        signal(SIGUSR1, handler);
        while(1){
            pause();
            printf("Father: processing something\n");
            sleep(1);
            printf("Father: End Process\n");
        }
    }


    return 0;
}