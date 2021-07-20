#include "semaphore.h"
#include <sys/shm.h>

#define N 10
#define Key 60

typedef struct Pile{
    int tab[N];
    int sommet;
}Pile;

int main(){

    int shmid = shmget(Key, sizeof(Pile), IPC_CREAT|0666);
    Pile *block = shmat(shmid, NULL, 0);

    int sm = CREAT_SEM(Key);
    INIT_SEM(sm, 0);

    block->sommet = -1;

    int i = 0;
    while(1){
        if(block->sommet < N - 1){
            block->sommet++;
            block->tab[block->sommet] = i;
            printf("Writing %d into %d\n", i, block->sommet);
            i++;
        }else{
            printf("...\n");
        }
        V(sm);
        sleep(1);   
        P(sm);
    }

    return 0;
}