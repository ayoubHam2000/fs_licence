#include <stdio.h>
#include <unistd.h>
#include <sys/types.h>
#include <stdlib.h>
#include <wait.h>

void pipeCommunication(){
    int desc[2];
    char messageLire[100];
    char message[100] = "father message\n";

    pipe(desc);
    int child = fork();

    if(child == 0){
        printf("C(%d, %d)\n", desc[0], desc[1]);
        close(desc[1]);
        printf("C(%d, %d)\n", desc[0], desc[1]);
        read(desc[0], messageLire, 100);
        printf("child receive : %s\n", messageLire);
    }else{
        printf("F(%d, %d)\n", desc[0], desc[1]);
        close(desc[0]);
        printf("F(%d, %d)\n", desc[0], desc[1]);
        write(desc[1], message, 100);
        printf("Father send : %s", message);
        wait(NULL);
    }
    
}

int main(){
    pipeCommunication();
    return 0;
}