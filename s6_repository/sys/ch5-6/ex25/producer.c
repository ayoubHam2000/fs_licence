#include "header.h"


void write_into_memory(char *shared_memory, char *message){


    //assuming the consumer will create the semaphre
    //the producer will just attach to them
    sem_t* producer = ft_sem_attach(SEM_PRODUCER_FNAME, 0);
    sem_t* consumer = ft_sem_attach(SEM_CONSUMER_FNAME, 1);

    for(int i = 0; i < 10; i++){
        sem_wait(consumer);
        printf("writting : %s\n", message);
        int done = strcmp(message, "quit");
        if(done == 0){
            break;
        }
        memcpy(shared_memory, message, MEM_SIZE);
        sem_post(producer);
    }

    ft_sem_unlink(SEM_CONSUMER_FNAME);
    ft_sem_unlink(SEM_PRODUCER_FNAME);
    
    ft_sem_close(consumer);
    ft_sem_close(producer);

}

int main(int ac, char **av){
    
    if(ac == 1){
        printf("Args\n");
        exit(1);
    }

    char *shared_memory = attach_memory(MEM_NAME, MEM_SIZE);

    write_into_memory(shared_memory, av[1]);

    detach_memory(shared_memory);

    return 0;
}