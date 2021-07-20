#include <unistd.h>
#include <stdio.h>
#include <stdlib.h>
#include <sys/wait.h>

int main(){
    int child = fork();

    if(child == -1){
        perror("fork");
        exit(1);
    }

    if(child == 0){
        printf("File : ");
        for(int i = 1; i <= 50; i++){
            printf("%d ", i * 2);
        }
        printf("\n");
    }else{
        wait(NULL);
        printf("Father : ");
        for(int i = 1; i <= 33; i++){
            printf("%d ", i * 3);
        }
        printf("\n");
    }

}