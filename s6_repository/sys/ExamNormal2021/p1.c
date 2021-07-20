//les fichier semaphore.c and semaphore.h sont utilisé juste pour verification
#include "semaphore.h"
#define MEM_KEY 60
#define SEM_KEY 60

typedef struct MP{
    int tab[10];
    int compteur;
    int p1;
    int p2;
}MP;

int main(){

    int shmid = shmget(MEM_KEY, sizeof(MP), IPC_CREAT|0666);
    MP *block = shmat(shmid, NULL, 0);

    int smid =CREAT_SEM(SEM_KEY);
    INIT_SEM(smid, 0);

    block->compteur = 0;
    block->p1 = getpid();

    P(smid);
    for(int i = block->compteur; i < 10; i++){
        block->compteur++;
        block->tab[i] = i;
    }

    V(smid);
    
    shmdt(block);

    return 0;
}