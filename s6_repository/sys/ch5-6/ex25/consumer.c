#include "header.h"

void read_from_memory(char *memory){

    ft_sem_unlink(SEM_CONSUMER_FNAME);
    ft_sem_unlink(SEM_PRODUCER_FNAME);

    sem_t* producer = ft_sem_open(SEM_PRODUCER_FNAME, 0660, 0);
    sem_t* consumer = ft_sem_open(SEM_CONSUMER_FNAME, 0660, 1);

    while(1){
        sem_wait(producer);
        if(strlen(memory) > 0){
            printf("Reading : %s\n", memory);
            int done = strcmp(memory, "quit");
            if(done == 0){
                break;
            }
            memory[0]=0;
        }
        sem_post(consumer);
    }


    ft_sem_close(consumer);
    ft_sem_close(producer);
}

int main(){

    char *shared_memory = attach_memory(MEM_NAME, MEM_SIZE);

    read_from_memory(shared_memory);

    destroy_memory(MEM_NAME);

    return 0;
}