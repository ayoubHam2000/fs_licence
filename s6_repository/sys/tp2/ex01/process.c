#include <unistd.h>
#include <stdio.h>

int main(){
    printf("pid : %d\n", getpid());
    while(1){
        sleep(1);
    }
    return 0;
}