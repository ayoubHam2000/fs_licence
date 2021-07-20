#include "header.h"

sem_t *ft_sem_open(char *name, int permission, int mode){
    sem_t *sem_phore;

    sem_phore = sem_open(name, O_CREAT, permission, mode);

    if(sem_phore == SEM_FAILED){
        perror("sem_open");
        exit(1);
    }

}

sem_t *ft_sem_attach(char *name, int mode){
    sem_t *sem_phore;

    sem_phore = sem_open(name, mode);

    if(sem_phore == SEM_FAILED){
        perror("sem_open");
        exit(1);
    }

}

void ft_sem_unlink(char *name){
    int respond = sem_unlink(name);

    if(respond == -1){
        perror("sem_unlink");
        //exit(1);
    }
}

void ft_sem_close(sem_t *sem_phore){
    int respond = sem_close(sem_phore);
    if(respond == -1){
        perror("sem_close");
        exit(1);
    }
}