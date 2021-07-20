#include "header.h"

void handler(int sig){

}

int main(){
    signal(SIGUSR1, handler);
    int shmid = ft_shmget(MEM_KEY, sizeof(Data));
    Data *block = ft_shmat(shmid);

    block->p1_pid = getpid();
    block->i = 0;

    printf("Waiting for p2...\n");
    pause();
    while(1){
        do{
            block->i += 2;
            printf("%d ", block->i);
        }while(block->i % 5 != 0 && block->i + 2 <= MAX);
        printf("\n");
        kill(block->p2_pid, SIGUSR1);
        if(block->i >= MAX){
            ft_shmdt(block);
            printf("End First\n");
            break;
        }
        pause();
        if(block->i >= MAX){
            ft_shmdt(block);
            ft_shmdel(shmid);
            printf("End\n");
            break;
        }
    };

    return 0;
}