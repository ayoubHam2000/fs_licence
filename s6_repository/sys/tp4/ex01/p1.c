#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>

#include <sys/shm.h>

#define MEM_KEY 60

int ft_shmget(int key, int size){
    int shmid;

    shmid = shmget(key, size, IPC_CREAT | 0644);
    if(shmid == -1){
        perror("shmget");
        exit(1);
    }

    return shmid;
}

void* ft_shmat(int shmid){
    void* block;

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

int main(int ac, char **av){

    if(ac > 1){
        int shmid = ft_shmget(MEM_KEY, sizeof(double));
        double *block = (double *)ft_shmat(shmid);
        *block = atof(av[1]);
        ft_shmdt(block);
    }else{
        printf("Arg : reel\n");
    }
}