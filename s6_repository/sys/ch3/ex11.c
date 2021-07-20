#include <stdio.h>
#include <unistd.h>
#include <sys/wait.h>

int main(){
    int child = fork();
    if(child == 0){
        sleep(1);
        printf("child End => zombie\n");
    }else{
        sleep(5);
        printf("End Parent\n");
    }

    return 0;
}
