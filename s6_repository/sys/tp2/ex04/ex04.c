#include <stdio.h>
#include <signal.h>
#include <stdlib.h>
#include <unistd.h>

void handler(int sig){
    printf("nemoro du sigale est : %d\n", sig);
}


int main(){
    int pid;
    int i;

    pid = getpid();
    for(i = 1; i < 65; i++){
        signal(i, handler);

        if(i==9 || i==19 || i==32 || i==33){
            switch (i){
                case 9 :
                    printf("on peut pas definir le signlal SIGKILL 9\n");
                    break;
                case 19:
                    printf("on peut pas definir le signlal SIGSTOP 19\n");
                    break;
                case 32:
                    printf("Unknown signal 32\n");
                    break;
                case 33:
                    printf("Unknown signal 33\n");
                    break;
            }
        }else{
            kill(pid, i);
        }
    }

    return 0;
}