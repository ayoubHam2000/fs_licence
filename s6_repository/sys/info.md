int getpid()
int getppid()
int getuid() -> user id of the current process
int getgid() -> group id
pid_t fork()


execl(const char *path, const char *arg, ...)
execlp(const char *file, const char *arg, ...)

execv(const char *path, char *const argv[])
execvp(const char *file, char *const argv[])

unsigned int sleep (unsigned int seconds)
void exit(int status)

pid_t wait (int* status);
pid_t waitpid(pid_t pid, int *status, int options);

---------------------------------------------------

SIGKILL - SIGSTOP - SIGCOUNT
*SIG_DFL*
*SIG_IGN*

signal (int sig, new_handler);
- int kill(pid_t pid, int sig) ;
    -> sig = 0 -> aucun signal n’est envoyé -> 0 (pasd’erreur) le processus de numéro « pid » existe).
    -> Si pid > 0, le signal est envoyé au processus d’identité « pid ».
    -> Si pid=0, le signal est envoyé à tous les processus qui sont dans le même groupe que le processus émetteur
    -> Si pid=-1, le signal est envoyé à tous les processus.
    -> Si pid < -1, le signal est envoyé à tous les processus du groupe de numéro |pid|.
    -> return -1 -> error

segaction ex07

pause : stop the process until receiving a signal
raise : int raise(int sig) <==> kill(getpid(), sig)
alarm : ex10

    signal(SIGALRM, handler);
    alarm(t);
    alarm(0);

-----------------------------------------------------------

- Lorsqu'un processus se termine, il envoie le signal *« SIGCHLD »* à son père et passe dans l’état *zombi*

- int sigemptyset (sigset_t * ens); Initialise l’ensemble de signaux « ens » à l’ensemble vide.

- int sigfillset (sigset_t * ens); Remplit l’ensemble « ens » avec tous les signaux.

- int sigaddset (sigset_t * ens, int sig); Ajoute le signal « sig » à l’ensemble « ens ».

- int sigdelset (sigset_t * ens, int sig); Retire le signal « sig » de l’ensemble « ens ».

- int sigismember (const sigset_t * ens, int sig); Retourne vrai si le signal « sig » appartient à l’ensemble « ens ».

- int sigprocmask(int opt, const sigset_t *ens, sigset_t *ens_ancien);
    sigprocmask(SIG_SETMASK, &ens1, NULL);

- int sigpending(sigset_t *ens) ;


------------------------------------------------------------

pip before fork

int pipe(int desc[2]);
read(desc[0], messageLire, 100);
write(desc[1], message, 100);
close(desc[1]);

    mkfifo(tupe_name, 0644);

    dec = open(tupe_name, O_WRONLY);
    write(dec, message, 100);
    
    int dec = open(tupe_name, O_RDONLY);
    read(dec, message, 100);
    ------
    close(1);
    dup(p[1]);
    close(p[1]);
    close(p[0]);

---------------------------------------------------------------

int shmget(CLE_MEM, MEM_SIZE, IPC_CREAT|0666);
void *shmat(id, NULL, 0);
int shmdt(void *shmaddr);
int shmctl(int shmid, IPC_RMID , NULL);

* On appelle ressource critiqueune ressource qui est à accès unique. Un processus peut accéder à une ressource critique à différents moments
* On  appelle section  critiquel’ensemble  d’instructions    permettant  à  un  processus d’accéder à une ressource critique
* On dit que deux ou plusieurs processus sont en exclusion mutuellelorsqu’ils exécutentenmême tempsleur section critique (pour une même ressource critique)

int CREAT_SEM(int key)
void INIT_SEM(int ids,int valeur)
void P(int ids)
void V(int ids)





