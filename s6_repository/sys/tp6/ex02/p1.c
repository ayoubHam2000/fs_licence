#include "semaphore.h"

#define key1 200

int main(){
    int S, n = 0;

    S = CREAT_SEM(key1);

    do{
        n = n + 2;
        printf("%d\t", n);
    }while(n % 5 != 0);
    printf("\n");
    sleep(5);
    V(S);
}