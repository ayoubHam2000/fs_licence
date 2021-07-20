#include <stdlib.h>
#include <stdio.h>
#include <sys/wait.h>
#include <unistd.h>
#include <fcntl.h>
#include <sys/types.h>
#include <errno.h>


//https://www.youtube.com/watch?v=dhFkwGRSVGk&list=PL9IEJIKnBJjFNNfpY6fHjVzAwtgRYjhPw&index=7

/*
it will blocked until one process receive ...
mkfifo mypip
ctrl+z
bg
a.out < mypip
*/
int main(){

    int fd = open("mypipe", O_RDONLY);
    int error;
    char c;

    while((error = read(fd, &c, 1)) > 0){
        write(1, &c, 1);
    }
    if(error == -1){
        perror("read");
    }
    close(fd);

    return 0;
}