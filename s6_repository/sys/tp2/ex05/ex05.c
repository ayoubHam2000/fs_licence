#include <stdio.h>
#include <stdlib.h>
#include <signal.h>
#include <unistd.h>

void handler(int sig){
    //printf("\nSig\n");
}

int main(){
    int child = fork();
    int i;

    if(child == -1){
        perror("Fork");
        exit(1);
    }

    i = 0;
    signal(SIGUSR1, handler);

    while(1){
        if(child == 0){
            printf("Child : ");
            do{
                i += 2;
                printf("%d ", i);
            }while(i % 5 != 0);
            printf("\n");
            //sleep(1);
            //printf("\nSend Signal To My Father\n");
            kill(getppid(), SIGUSR1);
            pause();
        }else{
            pause();
            printf("Father : ");
            do{
                i += 3;
                printf("%d ", i);
            }while(i % 5 != 0 && i < 99);
            if(i >= 99){
                kill(child, 9);
                exit(0);
            }
            //sleep(1);
            printf("\n");
            //printf("\nSend Signal To My Child\n");
            kill(child, SIGUSR1);
        }
    }
}