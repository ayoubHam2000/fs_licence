#include <stdio.h>
#include <unistd.h>
#include <errno.h>

int main(){
    //execl("/bin/ls", "ls", "-l", ".", NULL);
    //execlp("ls", "ls", "-l", ".", NULL);
    
    char *const args[] = {"ls", "-la", NULL};

    //execv("/bin/ls", args);
    execvp("ls", args);
    perror("Error");
    return 0;
}