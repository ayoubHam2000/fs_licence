#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>

#define Buffer_Size 9

int main(){
    int p;
    int des[2];
    char buffer[Buffer_Size];
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
        sprintf(buffer, "%d", i - 2);
        write(des[1], buffer, Buffer_Size);
        close(des[1]);
    }else{
        close(des[1]);

        read(des[0], buffer, Buffer_Size);
        printf("Father: ");
        i = atoi(buffer);
        for(; i <= 25; i += 3){
            printf("%d ", i);
        }
        printf("\n");
        close(des[0]);
    }

    return 0;

}