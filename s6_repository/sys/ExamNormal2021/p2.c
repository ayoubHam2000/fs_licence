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

    int sum = 0;
    int shmid = shmget(MEM_KEY, sizeof(MP), IPC_CREAT|0666);
    MP *block = (MP *)shmat(shmid, NULL, 0);

    int smid =CREAT_SEM(SEM_KEY);

    block->p2 = getpid();

    for(int i = 0; i < 5; i++){
        block->compteur++;
        block->tab[i] = i;
    }

    V(smid);
    P(smid);

    for(int i = 0; i < 10; i++){
        sum += block->tab[i];
    }
    
    shmdt(block);
    shmctl(shmid, IPC_RMID, NULL);
    printf("somme est : %d\n",sum);


    return 0;
}