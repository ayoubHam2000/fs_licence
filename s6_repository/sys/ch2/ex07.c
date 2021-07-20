#include <signal.h>
#include <stdio.h>
#include <unistd.h>

void hand(int signum){
    signal(SIGINT, SIG_DFL);
    printf("press again ctrl + c\n");
}

struct sigaction action;

int main(){
    action.sa_handler = SIG_IGN;
    sigaction(SIGINT, &action, NULL);
    sigaction(SIGQUIT, &action, NULL);
    printf("ignoring (SIGINT, SIGQUIT)\n");
    
    sleep(5);

    action.sa_handler = SIG_DFL;
    sigaction(SIGINT, &action, NULL);
    sigaction(SIGQUIT, &action, NULL);
    
    printf("restore (SIGINT, SIGQUIT)\n");
    sleep(5);

    return 0;
}