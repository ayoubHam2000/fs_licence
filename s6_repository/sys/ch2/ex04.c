#include <signal.h>
#include <unistd.h>
#include <stdio.h>

void ft_kill_one(){
    int child = fork();

    if(child == 0){
        while(1){
            sleep(1);
            printf("child\n");
        }
    }else{
        sleep(3);
        printf("the father kill his child\n");
        kill(child, SIGUSR1);
        printf("END...\n");
    }
}


void ft_kill_all(){
    int child1 = fork();
    int child2;
    if(child1 == 0){
        child2 = fork();
        if(child2 == 0){
            while(1){
                sleep(1);
                printf("child2\n");
            }
        }else{
            while(1){
                sleep(1);
                printf("child1\n");
            }
        }
    }else{
        sleep(3);
        printf("the father kill his children\n");
        int i = 0;
        while(i++ < 100)
            printf("END...\n");
        kill(0, SIGUSR1);
    }
}

int main(){

    //ft_kill_one();
    ft_kill_all();
    return 0;
}

