#include <stdio.h>
#include <stdlib.h>
#include <sys/wait.h>
#include <unistd.h>

#include <fcntl.h>
#include <sys/stat.h>

void ft_mkfifo(){

    char tupe_name[] = "namePipe";
    char message[100];

    int dec = open(tupe_name, O_RDONLY);
    read(dec, message, 100);
    printf("%s\n", message);

}

int main(){
    ft_mkfifo();
    return 0;
}