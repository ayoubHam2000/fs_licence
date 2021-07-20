#include <stdio.h>
#include <stdlib.h>
#include <sys/wait.h>
#include <unistd.h>

#include <fcntl.h>
#include <sys/stat.h>

void ft_mkfifo(){

    char tupe_name[] = "namePipe";
    mkfifo(tupe_name, 0522);
}

int main(){
    ft_mkfifo();
    return 0;
}