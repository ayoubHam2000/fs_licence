#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <fcntl.h>
#include <sys/types.h>
#include <sys/stat.h>

#define MIFIFO_NAME "my_fifo"

int main(){
    int i;

    int des = open(MIFIFO_NAME, O_RDONLY);

    if(des < 0){
        perror("open");
        exit(1);
    }


    if(read(des, &i, sizeof(int) * 1) < 0){
        perror("read");
        exit(1);
    }

    do{
        i += 3;
        printf("%d ", i);
    }while(i < 25);
    printf("\n");



    return 0;
}