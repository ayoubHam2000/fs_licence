#include "header.h"

void handler(int sig){

}

int main(){
    signal(SIGUSR1, handler);
    int shmid = ft_shmget(MEM_KEY, sizeof(Data));
    Data *block = ft_shmat(shmid);

    block->p2_pid = getpid();
    kill(block->p1_pid, SIGUSR1);

    while(1){
        pause();
        if(block->i >= MAX){
            ft_shmdt(block);
            ft_shmdel(shmid);
            printf("End\n");
            break;
        }

        do{
            block->i += 3;
            printf("%d ", block->i);
        }while(block->i % 5 != 0 && block->i + 3 <= MAX);
        printf("\n");
        kill(block->p1_pid, SIGUSR1);
        if(block->i >= MAX){
            ft_shmdt(block);
            printf("End First\n");
            break;
        }
    };
    return 0;
}