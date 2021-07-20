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

    while(1){
        P(sm);
        if(block->sommet >= 0){
            printf("Receive from %d : %d\n",block->sommet, block->tab[block->sommet]);
            block->sommet--;
        }else{
            printf("...\n");
        }
        sleep(2);
        V(sm);
    }

    return 0;
}