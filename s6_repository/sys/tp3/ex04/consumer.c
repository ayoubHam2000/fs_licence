#include <stdio.h>
#include <unistd.h>
#include <stdlib.h>

#include <sys/types.h>
#include <sys/stat.h>
#include <fcntl.h>

int main(){

    char *fifo_name = "my_mkfifo";
    char buffer[100];

    int des = open(fifo_name, O_RDONLY);

    if(des < 0){
        perror("open");
        exit(1);
    }

    if(read(des, buffer, 100) > 0){
        for(int i = 0; buffer[i] != 0; i++){
            if(buffer[i] <= 'z' && buffer[i] >= 'a'){
                buffer[i] -= 'a' - 'A';
            }
        }
        printf("receive : %s\n", buffer);
    }else{
        perror("read");
        exit(1);
    }


    return 0;
}