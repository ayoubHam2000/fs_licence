#include <stdio.h>
#include <unistd.h>
#include <signal.h>
#include <stdlib.h>


void handler(int sig){
    printf("\nTime out\n");
    exit(0);
}

int main(){
    int a,b,r;
    int t = 3;
    printf("a = ");
    scanf("%d", &a);
    printf("b = ");
    scanf("%d", &b);

    signal(SIGALRM, handler);
    alarm(t);

    printf("You have %d second(s)....\n", t);
    printf("what is a * b = ");
    scanf("%d", &r);
    alarm(0);
    // annule la temporisation dans le cas du reponse

    if(a * b == r){
        printf("Winner!!\n");
    }else{
        printf("Loser!!\n");
    }

    return 0;
}