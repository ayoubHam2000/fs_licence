#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <signal.h>
#include <error.h>
#include <sys/shm.h>

//for simple code => memory_at_2.c

typedef struct File{
    int tab[10];
    int T; /*tete*/
    int Q; /*queue de file*/
}File;

void ft_exit(char *err){
    perror(err);
    exit(1);
}

int ft_shmget(int key, int size){
    int shmid = shmget(key, size, IPC_CREAT|0666);
    if(shmid == -1)
        ft_exit("shmget");
    return shmid;
}

void *ft_shmat(int shmid){
    void *block = shmat(shmid, NULL, 0);
    if((void *)-1 == block)
        ft_exit("shmat");
    return block;
}

void ft_shmdt(void *block){
    if(shmdt(block) == -1)
        ft_exit("shmdt");
}

void ft_shmctl(int shmid){
    if(shmctl(shmid, IPC_RMID, NULL) == -1)
        ft_exit("shmctl");
}

int main(){

    int shmid = ft_shmget(60, sizeof(File));
    File* block = (File *)ft_shmat(shmid);
    

    return 0;
}