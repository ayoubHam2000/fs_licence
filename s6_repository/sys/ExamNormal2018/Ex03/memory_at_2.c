#include <stdio.h>
#include <sys/shm.h>

//for simple code => memory_at_2.c

typedef struct File{
    int tab[10];
    int T; /*tete*/
    int Q; /*queue de file*/
}File;



int main(){

    int shmid = shmget(60, sizeof(File), IPC_CREAT);
    File* block = (File *)shmat(shmid, NULL, 0);
    

    return 0;
}