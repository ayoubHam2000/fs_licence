#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>



int main(){
    int p;
    int des[2];
    int child;
    int i;

    p = pipe(des);
    if(p == -1){
        perror("pipe");
        exit(1);
    }

    child = fork();
    if(child == -1){
        perror("fork");
        exit(1);
    }

    if(child == 0){
        close(des[0]);
        printf("Child: ");
        for(i = 2; i <= 10; i=i+2){
            printf("%d ", i);
        }
        printf("\n");
        i -= 2;
        write(des[1], &i, sizeof(int));
        close(des[1]);
    }else{
        close(des[1]);
        printf("Father: ");
        
        read(des[0], &i, sizeof(int));
        for(; i <= 25; i += 3){
            printf("%d ", i);
        }
        printf("\n");
        close(des[0]);
    }

    return 0;

}