*Include*
unistd.h
errno.h
stdlib.h
wait.h



## fork errno, perror, getpid, etc
int getpid()
int getppid()
int getuid() -> user id of the current process
int getgid() -> group id
pid_t fork()
    -> 0 in case child
    -> id in case parent
    -> -1 in case failed
    ->les variables ne sont pas partagées. Un seul programme, deux processus, deux mémoires virtuelles, deux jeux de données

errno
    -> a global varibale declare in errno.h 
perror(const char *s)
    -> return a string that describe the code of the varibale errno

## exec
*---*
execl(const char *path, const char *arg, ...)
execlp(const char *file, const char *arg, ...)
execle(const char *path, const char *arg,..., char * const envp[])
*---*
The const char *arg and subsequent ellipses in the execl(), execlp(), and execle() functions can be thought of as arg0, arg1, ..., argn. Together they describe a list of one or more pointers to null-terminated strings that represent the argument list available to the executed program. The first argument, by convention, should point to the filename associated with the file being executed. The list of arguments must be terminated by a NULL pointer, and, since these are variadic functions, this pointer must be cast (char *) NULL. 

*---*
execv(const char *path, char *const argv[])
execvp(const char *file, char *const argv[])
execvpe(const char *file, char *const argv[],char *const envp[])
*---*
The execv(), execvp(), and execvpe() functions provide an array of pointers to null-terminated strings that represent the argument list available to the new program. The first argument, by convention, should point to the filename associated with the file being executed. The array of pointers must be terminated by a NULL pointer. 


## sleep() exit() wait()
**Sleep**
unsigned int sleep (unsigned int seconds)
*Return Value*
Zero if the requested time has elapsed, or the number of seconds left to sleep, if the call was interrupted by a signal handler. 
**Exit**
void exit(int status)
Tous les descripteurs de fichier ouverts sont fermés
le père du processus fils devient le processus init de pid 1
**Wait**
**pid_t wait (int* status);**
**pid_t waitpid(pid_t pid, int *status, int options);**

-> The wait() system call suspends execution of the current process until one of its children terminates. == waitpid(-1, &status, 0);
-> La fonction retourne le numéro de PID du fils qui vient de se terminer ;
-> l’appel wait ne permet pas d’attendre la fin d’un fils particulier. C’est le
rôle de l’appel système waitpid


    < -1   meaning wait for any child process whose process group ID
            is equal to the absolute value of pid.

    -1     meaning wait for any child process.

    0      meaning wait for any child process whose process group ID
            is equal to that of the calling process at the time of the
            call to waitpid().

    > 0    meaning wait for the child whose process ID is equal to
            the value of pid.

En cas de réussite(wait and waitpid), le PID du fils qui s'est terminé est renvoyé, en cas d'échec -1 est renvoyé
et errno contient le code d'erreur.
see also ch03

## Example
fork - errno - perror -> ex01.c
exec -> ex02.c
sleep(), exit(), wait() -> ex03.c