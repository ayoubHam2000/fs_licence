#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <sys/wait.h>
#include <errno.h>

#include <sys/ipc.h>
#include <sys/sem.h>

union semun{
    int val;
    struct semid_ds *buf;
    ushort *array;
};

int creat_sem(int key){
    int id_sem = semget(key, 1, 0777|IPC_CREAT);
    if(id_sem == -1){
        perror("semget");
        exit(1);
    }
    return id_sem;
}

void init_sem(int id, int valeur_init){
    union semun ctrl;

    ctrl.val = valeur_init;
    semctl(id, 0, SETVAL, ctrl);
}

void p(int id){
    struct sembuf op;

    op.sem_num = 0;
    op.sem_op = -1;
    op.sem_flg = SEM_UNDO;
    semop(id, &op, 1);
}

void v(int id){
    struct sembuf op;

    op.sem_num = 0;
    op.sem_op = 1;
    op.sem_flg = SEM_UNDO;
    semop(id, &op, 1);
}

int main(){

    return 0;
}