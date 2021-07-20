#include <stdio.h>
#include <unistd.h>
#include <errno.h>
#include <stdlib.h>
#include <wait.h>

void ft_sleep(){
    if(fork() == 0){
        sleep(2);
        printf("From Child\n");
    }else{
        sleep(3);
        printf("From Parent\n");
    }
}

void ft_exit(){
    if(fork() == 0){
        sleep(3);
        printf("From Child\n");
        printf("my parent is : %d\n", getppid());
        exit(0);
    }else{
        printf("From Parent %d\n", getpid());
        printf("Parent My Parent : %d\n", getppid());
        exit(0);
    }
}

void ft_wait(){
    int n = 0;

    if(fork() == 0){
        n += 2;
        printf("From ->Child %d\n", n);
    }else{
        n += 3;
        wait(NULL);
        printf("From ->Parent %d\n", n);
    }
}

int main(){
    //ft_sleep();
    //ft_exit();
    ft_wait();
    return 0;
}
