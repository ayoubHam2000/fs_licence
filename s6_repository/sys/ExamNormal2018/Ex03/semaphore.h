#include <stdio.h>
#include <stdlib.h>
#include <sys/ipc.h>
#include <sys/sem.h>
#include <sys/types.h>
#include <unistd.h>
#include <sys/shm.h>

union semun{
    int val;
    struct semid_ds *buf;
    unsigned short *array;
    struct seminfo *__buf;
};


int CREAT_SEM(int key);
void INIT_SEM(int ids,int valeur);
void P(int ids);
void V(int ids);