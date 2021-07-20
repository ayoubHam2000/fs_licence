#include <stdio.h>
#include <signal.h>
#include <stdlib.h>
#include <unistd.h>

sigset_t ens1, ens2;
int sig;

int main() {
    //construction de l’ensemble ens1={SIGINT, SIGQUIT, SIGUSR1}
    sigemptyset(&ens1);
    sigaddset(&ens1,SIGINT); // ajoute le signal SIGINT à ens1
    sigaddset(&ens1,SIGQUIT); // ajoute le signal SIGQUIT à ens1
    sigaddset(&ens1,SIGUSR1); // ajoute le signal SIGUSR1 à ens1
    printf("Numéros des signaux INT=%d USR1=%d QUIT=%d\n", SIGINT, SIGUSR1 ,SIGQUIT );
    printf("pid : %d\n", getpid());
    // Installation du masque ens1
    sigprocmask(SIG_SETMASK, &ens1, NULL);
    printf("Masquage mis en place.\n");
    printf("Press Enter to continue: \n");
    getchar();
    /* affichage des signaux pendants: signaux envoyés mais non délivrés car masqués*/
    sigpending(&ens2);
    printf("Signaux pendants:\n");
    for(sig=1; sig<NSIG; sig++){
        if( sigismember(&ens2, sig) ){
            printf("%d \n",sig);
            sleep(2); /* Suppression du masquage des signaux */
        }
    }

    sigemptyset(&ens1);
    printf("Déblocage des signaux.\n");
    sigprocmask(SIG_SETMASK, &ens1, (sigset_t *)0);
    printf("Press Enter to continue: \n");
    getchar();

    printf("Fin normale du processus \n");
    exit(0); 
}