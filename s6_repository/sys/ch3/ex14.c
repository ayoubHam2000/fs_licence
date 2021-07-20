#include <stdio.h>
#include <signal.h>
#include <stdlib.h>
#include <unistd.h>

sigset_t ens1, ens2;
int sig;

int main(){
    
    sigemptyset(&ens1);
    sigaddset(&ens1, SIGINT);
    sigaddset(&ens1, SIGUSR1);
    sigaddset(&ens1, SIGQUIT);

    sigprocmask(SIG_SETMASK, &ens1, NULL);
    printf("pid : %d\n", getpid());
    printf("MASK => Press Enter to continue: \n");
    getchar();

    sigpending(&ens2);
    for(sig = 1; sig < 32; sig++){
        if(sigismember(&ens2, sig)){
            printf("Signal : %d\n", sig);
        }
    }

    sigemptyset(&ens1);
    printf("Déblocage des signaux.\n");
    sigprocmask(SIG_SETMASK, &ens1, &ens2);

    for(sig = 1; sig < 32; sig++){
        if(sigismember(&ens2, sig)){
            printf("Old Signal : %d\n", sig);
        }
    }

    printf("Fin normale du processus \n");
    exit(0); 
    return 0;
}