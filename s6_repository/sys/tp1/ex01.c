#include<stdio.h>
#include<stdlib.h>
#include <unistd.h>

int main(){
    int pid;

    pid=fork();

    if(pid==-1){
        perror("fork");
        exit(0);
    }

    if(pid==0){
        printf("c’est le Fils \n");
    }else{
        printf("c’est le Père \n");
    }
}