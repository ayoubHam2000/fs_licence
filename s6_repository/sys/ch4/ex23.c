#include <stdio.h>
#include <unistd.h>
#include <stdlib.h>
#include <sys/wait.h>
#include <sys/shm.h>
#include <string.h>


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

void* attach_to_memory(int id){
    char *ptr;

    ptr = shmat(id, 0, 0);

    return ptr;
}

void write_into_memory(void *ptr){
    char data[] = "Hello world !";
    strncpy(ptr, data, strlen(data));
}

void detatch_memory(char *ptr){
    shmdt(ptr);
}


void ft_shm(){

    int id = create_memory();

    char* ptr = attach_to_memory(id);

    write_into_memory(ptr);

    detatch_memory(ptr);
}

int main(){
    ft_shm();
    return 0;
}