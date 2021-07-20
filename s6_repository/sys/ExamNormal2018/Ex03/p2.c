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

    int shmid = shmget(MEM_KEY, sizeof(File), IPC_CREAT | 0666);
    File *block = shmat(shmid, NULL, 0);

    int smid = CREAT_SEM(SEM_KEY);


    while(1){
        P(smid);
        if(block->T != -1 && block->T <= block->Q){
            printf("Retreive : %d\n", block->tab[block->T]);
            block->T++;
        }else{
            printf("...\n");
        }
        sleep(1);
        V(smid);
    }

    return 0;
}