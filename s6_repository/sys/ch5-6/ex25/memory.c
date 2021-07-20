#include "header.h"


int get_shared_memory(char *filename, int size){
    key_t key;
    int memory_id;

    key = ftok(filename, MEM_KEY);
    if(key == -1){
        perror("ftok");
        exit(1);
    }

    memory_id = shmget(key, size, 0644|IPC_CREAT);
    if(memory_id == -1){
        perror("shmget");
        exit(1);
    }

    return memory_id;
}

void *attach_memory(char *filename, int size){
    int shared_memory = get_shared_memory(filename, size);
    
    void *memory = shmat(shared_memory, NULL, 0);

    if(memory == IPC_ERROR){
        perror("shmat");
        exit(1);
    }

    return memory;
}

void detach_memory(void *memory){
    int error = shmdt(memory);

    if(error == -1){
        perror("shmdt");
        exit(1);
    }
}

void destroy_memory(char *filename){
    int shared_memory = get_shared_memory(filename, 0);
    
    int error = shmctl(shared_memory, IPC_RMID, NULL);   

    if(error == -1){
        perror("shmctl");
        exit(1);
    }

}