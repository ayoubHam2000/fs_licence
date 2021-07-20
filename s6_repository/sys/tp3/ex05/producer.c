#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <fcntl.h>
#include <sys/types.h>
#include <sys/stat.h>

#define MIFIFO_NAME "my_fifo"

int main(){
    int i;

    mkfifo(MIFIFO_NAME, 0644);

    int des = open(MIFIFO_NAME, O_WRONLY);

    if(des < 0){
        perror("open");
        exit(1);
    }

    i = 0;
    do{
        i += 2;
        printf("%d ", i);
    }while(i < 10);
    printf("\n");

    if(write(des, &i, sizeof(int) * 1) < 0){
        perror("write");
        exit(1);
    }

    return 0;
}