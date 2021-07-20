#include <stdio.h>
#include <unistd.h>
#include <errno.h>

int main(){

    if(fork() == -1){
        printf("Error code = %d\n", errno);
        perror("The Error is ");
    }else if(fork() == 0){
        printf("Child\n")
    }else{
        printf("Parent\n")
    }

    return 0;
}