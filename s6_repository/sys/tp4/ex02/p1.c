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

    int i;
    int shmid = ft_shmget(MEM_KEY, sizeof(int));
    int *block = (int *)ft_shmat(shmid);

    i = 0;
    do{
        i += 2;
        printf("%d ", i);
    }while(i % 5 != 0);
    printf("\n");

    *block = i;
    ft_shmdt(block);

}