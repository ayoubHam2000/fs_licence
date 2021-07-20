#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <string.h>

#define BUFFER_SIZE 100

int main(){
    int child;
    int des[2];
    int pip;
    char c;
    char message[BUFFER_SIZE] = "message from child\n";

    pip = pipe(des);
    if(pip == -1){
        perror("pip");
        exit(1);
    }

    child = fork();
    if(child == -1){
        perror("fork");
        exit(1);       
    }


    if(child == 0){
        close(des[0]);
        write(des[1], message, BUFFER_SIZE);
        close(des[1]);
    }else{
        close(des[1]);
        while(read(des[0], &c, 1) > 0){
            if(c >= 'a' && c <= 'z'){
                c -= ('a' - 'A');
            }
            write(1, &c, 1);
        }
        close(des[0]);
    }
}