#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>

#include <sys/shm.h>

#define MEM_KEY 60
#define MEM_SIZE 1024

int ft_shmget(int key, int size){
    int shmid;

    shmid = shmget(key, size, IPC_CREAT | 0644);
    if(shmid == -1){
        perror("shmid");
        exit(1);
    }

    return shmid;
}


void *ft_shmat(int shmid){
    void *block;

    block = shmat(shmid, NULL, 0);

    if(block == (void *)-1){
        perror("shmat");
        exit(1);
    }
    return block;
}

void ft_shmdt(void *block){
    if(shmdt(block) == -1){
        perror("shmdt");
        exit(1);
    }
}

void ft_shmdel(int shmid){
    if(shmctl(shmid, IPC_RMID, NULL) == -1){
        perror("shmctl");
        exit(1);
    }
}

int main(){
    int shmid = ft_shmget(MEM_KEY, sizeof(double));
    double *block = ft_shmat(shmid);
    printf("(%lf) ^ 2 = %lf\n",*block, *block * *block);
    ft_shmdt(block);
    ft_shmdel(shmid);
}