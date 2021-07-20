#include <stdio.h>
#include <unistd.h>
#include <stdlib.h>
#include <signal.h>


sigset_t ens1, ens2;

int main(int ac, char **av){
    int child;

    child = fork();
    if(child == 0){
        int sig;

        for(int i = 1; i < ac; i++){
            sig = atoi(av[i]);

            //sleep(1);
            //printf("child Send Signal to parent pid %d : signal=%d\n", getppid(), sig);
            kill(getppid(), sig);
        }
    }else{
        int sig_number;

        while(1){
            sig_number = 0;

            //printf("Parent Pid %d\n", getpid());
            //printf("Child Pid %d\n", child);
            //printf("Ignorer le SIGQUIT\n");
            signal(SIGQUIT, SIG_IGN);

            //printf("Masker les signaux\n");
            sigemptyset(&ens1);
            for(int i = 0; i < 65; i++){
                if(i != 9 && i != 19 && i != 32 && i != 33){
                    sigaddset(&ens1, i);
                }
            }
            sigprocmask(SIG_SETMASK, &ens1, NULL);

            //printf("Sleep 30s\n");
            sleep(30);
            signal(SIGQUIT, SIG_DFL);

            //printf("Compter\n");
            sigpending(&ens2);
            for(int i = 1; i < 65; i++){
                if(sigismember(&ens2, i) && i != SIGINT){
                    //printf("Signal received  %d\n", i);
                    sig_number++;
                }
            }
            //printf("Le nomber de signaux recu: %d\n", sig_number);
            //sleep(10);
            //exit(1);
        }
    }


    return 0;
}