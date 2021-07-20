#include <stdio.h>
#include <unistd.h>
#include <stdlib.h>
#include <sys/wait.h>
#include <sys/shm.h>

#define CLE_MEM 60
#define MEM_SIZE 1024


int create_memory(){
    int shmid;

    shmid = shmget(CLE_MEM, MEM_SIZE, IPC_CREAT|0666);
    if(shmid == -1){
        perror("shmget ");
        exit(1);
    }

    return shmid;
}

char* attach_to_memory(int id){
    char *ptr;

    ptr = (char*)shmat(id, 0, 0);

    return ptr;
}

void read_from_memory(char *ptr){
    printf("%s\n", ptr);
}

void detatch_memory(char *ptr){
    shmdt(ptr);
}

void destroy_memory(int id){
    shmctl (id, IPC_RMID, NULL);
}

void ft_shm(){

    int id = create_memory();

    char* ptr = attach_to_memory(id);

    read_from_memory(ptr);

    detatch_memory(ptr);

    destroy_memory(id);
}

int main(){
    ft_shm();
    return 0;
}