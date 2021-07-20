#include <stdio.h>
#include <unistd.h>
#include <stdlib.h>
#include <sys/wait.h>

#define MSGSIZE 12


int main()
{
    char* msg1 = "Message #1\n";

	char inbuf[MSGSIZE];
	int p[2], pid, nbytes;
    char c;



    pid = fork();
    if(pid == -1){
        perror("fork");
        exit(1);       
    }

    if(pipe(p) == -1){
        perror("pip");
        exit(1);
    }
   

	if (pid > 0) {
		close(p[0]); 
		write(p[1], msg1, MSGSIZE);
		close(p[1]);
		wait(NULL);
	}

	else {
        printf("Reading\n");
		close(p[1]);
		while (read(p[0], &c, 1) > 0){
            write(1, &c, 1);
        }
		close(p[0]);
		printf("End Reading\n");
	}
	return 0;
}
