#include <stdlib.h>
#include <signal.h>

int main(int ac, char **av){
    int sig;
    int pid;

    if (ac >= 2){
        sig = atoi(av[1]);
        pid = atoi(av[2]);
        kill(pid, sig);
    }
}