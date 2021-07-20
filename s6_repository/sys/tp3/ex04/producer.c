#include <stdio.h>
#include <unistd.h>
#include <stdlib.h>

#include <sys/types.h>
#include <sys/stat.h>
#include <fcntl.h>

int main(){

    char fifo_name[] = "my_mkfifo";

    mkfifo(fifo_name, 777);

    int des = open(fifo_name, O_WRONLY);

    if(des < 0){
        perror("open");
        exit(1);
    }

    if(write(des, "Message", 7) < 0){
        perror("write");
        exit(1);
    }

    return 0;
}