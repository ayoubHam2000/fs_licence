#include<stdio.h>
#include<stdlib.h>
#include <unistd.h>

int main(){
    int pid,n=0;

    pid=fork();

    if(pid==-1){
        perror("fork");
        exit(0);
    }
    
    if(pid==0){
        n=n+2;
        printf("Fils n=%d \n",n);
    }else {
        n=n+3;
        printf("Père n=%d \n",n);
    }
    
    n=n+1;
    printf("n=%d \n",n);
    return 0;
}