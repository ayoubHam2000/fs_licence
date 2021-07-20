#ifndef MY_HEADER_H
#define MY_HEADER_H

#include <semaphore.h>
#include <fcntl.h>

#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <string.h>

#include <sys/wait.h>
#include <sys/shm.h>
#include <sys/ipc.h>
#include <sys/types.h>

#include <errno.h>

#define IPC_ERROR (void *)-1
#define MEM_KEY 60
#define MEM_SIZE 1024
#define MEM_NAME "shmfile"

#define SEM_CONSUMER_FNAME "consumer_cem"
#define SEM_PRODUCER_FNAME "producer_cem"


/* memory.c */
int get_shared_memory(char *filename, int size);
void *attach_memory(char *filename, int size);
void detach_memory(void *memory);
void destroy_memory(char *filename);

/* semaphore.c */
sem_t *ft_sem_open(char *name, int permission, int mode);
sem_t *ft_sem_attach(char *name, int mode);
void ft_sem_unlink(char *name);
void ft_sem_close(sem_t *sem_phore);



#endif
