#include "semaphore.h"

#define MEM_KEY 61
#define SEM_KEY 60
#define N 10

typedef struct File{
    int tab[N];
    int T; /*tete*/
    int Q; /*queue de file*/
}File;


int main(){

    int shmid = shmget(MEM_KEY, sizeof(File), IPC_CREAT|0666);
    File *block = (File*)shmat(shmid, NULL, 0);

    int smid = CREAT_SEM(SEM_KEY);
    INIT_SEM(smid, 0);

    block->Q = -1;
    block->T = -1;

    int i = 0;
    while(1){
        if(block->Q < N - 1){
            if(block->T == -1)
                block->T = 0;
            block->Q++;
            block->tab[block->Q] = i;
            printf("Insert into %d value %d\n", block->Q, i);
        }else{
            printf("...\n");
        }
        i++;
        V(smid);
        sleep(1);
        P(smid);
    }

    return 0;
}