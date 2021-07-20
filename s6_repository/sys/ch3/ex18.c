#include <stdio.h>
#include <unistd.h>
#include <stdlib.h>
#include <sys/wait.h>

#define MSGSIZE 19


int main()
{
    char* msg1 = "hello, world #1";
    char* msg2 = "hello, world #2";
    char* msg3 = "hello, world #3";

	char inbuf[MSGSIZE];
	int p[2], pid, nbytes;

	if (pipe(p) < 0)
		exit(1);

	/* continued */
	if ((pid = fork()) > 0) {
		close(p[0]); 

		write(p[1], msg1, MSGSIZE);
		write(p[1], msg2, MSGSIZE);
		write(p[1], msg3, MSGSIZE);

		close(p[1]); //close p[1]
		wait(NULL);
	}

	else {
		// Adding this line will
		// not hang the program
		close(p[1]);
		while ((nbytes = read(p[0], inbuf, MSGSIZE)) > 0){
			printf("-(%d)-%s\n", nbytes, inbuf);
        }
		close(p[0]);
		if (nbytes != 0)
			exit(2);
		printf("Finished reading\n");
	}
	return 0;
}
