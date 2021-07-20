#include <stdio.h>
#include <stdlib.h>
#include <sys/wait.h>
#include <unistd.h>

#include <fcntl.h>
#include <sys/stat.h>

void ft_mkfifo(){

    char tupe_name[] = "namePipe";
    char message[100] = "Hello world!\n";
    int dec;

    mkfifo(tupe_name, 0644);
    dec = open(tupe_name, O_WRONLY);
    write(dec, message, 100);

}

int main(){
    ft_mkfifo();
    return 0;
}