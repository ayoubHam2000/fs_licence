#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <signal.h>

int count = 0;

void handler(int sig){
    count++;
}

int main(){
    printf("Mon pid est : %d\n", getpid());
    
    signal(SIGINT, SIG_IGN);
    signal(SIGTSTP, SIG_IGN);
    signal(SIGCONT, handler);

    while(1){
        pause();
        printf("Sig Sended %d\n", count);
        //sleep(1);
    }

}