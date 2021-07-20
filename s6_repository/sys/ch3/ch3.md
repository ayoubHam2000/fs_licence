# include
    <sys/wait.h>.

# info
- Lorsqu'un processus se termine, il envoie le signal *« SIGCHLD »* à son père et passe dans l’état *zombi* tant que son père n’a pas pris connaissance de sa terminaison c'est à dire que la mémoire est libérée **(le fils n’a plus son code ni ses données en mémoire) mais que le processus existe toujours dans la table des processus.**

- Une fois le père lit le code retour du fils, à ce moment il termine et disparaît complètement du système.

- Dans le cas où le père meurt avant la terminaison de son fils, alors le processus fils sera nrattaché au processus « init » ( l’ID du processus « init » est 1).

- on utilise les fonctions de synchronisation *« wait() »* et *« waitpid() »* qui permettent au processus père de rester bloqué en attente de la réception
d’un signal « SIGCHLD ».

- l'état du processus : R (en cours d’exécution), S (en sommeil), T (stoppé)
ou encore Z (zombie).

# wait, waitpid()
*pid_t wait (int * status);*

- Ces appels système permettent au processus père d'attendre la fin d'un de ses processus fils et de récupérer son status de fin.

- L'appel de la fonction wait() bloque le processus qui l’appelle en attente de la terminaison de l’un de ses processus fils.

- Si le processus qui appelle wait() n'a pas de fils, alors wait() retourne -1.

- Sinon wait() retourne le PID du processus fils qui vient de se terminer.

- Si le pointeur « status » est non NULL, il contient des informations sur la terminaison du processus fils (code du signal qui a tué le fils, les circonstances de la terminaison du fils).
    « WEXITSTATUS(status) »: fournit le code retour du processus s’il s’est terminé normalement.
    « WIFEXITED(status) »: vrais si le processus fils s’est terminé normalement.
    « WIFSIGNALED(status) »: vrai si le fils s’est terminé à cause d’un signal.
    « WTERMSIG(status) »: fournit le numéro du signal ayant tué le processus.
    « WIFSTOPPED(status) »: indique que le processus fils est stoppé temporairement.
    « WSTOPSIG(status) »: fournit le numéro du signal ayant stoppé le processus.

- Pour attendre la terminaison de tous les fils il faut faire une boucle sur le
nombre de fils.

*pid_t waitpid (pid_t pid, int * status, int options);*
**pid**
- Si pid >0: processus père attend le processus fils identifié par «pid».
- Si pid=0, le processus appelant attend la terminaison de n’importe quel processus fils appartenant au même groupe que le processus appelant.
- Si pid =-1: le processus père attend la terminaison de n’importe quel processus fils, comme avec la fonction « wait() ».
- Si pid<-1: le processus père attend la terminaison de n’importe quel processus fils appartenant au groupe de processus dont le numéro est |pid|
**options**
WCONTINUED
    The waitpid() function shall report the status of any continued child process specified by pid whose status has not been reported since it continued from a job control stop. 
WNOHANG
    The waitpid() function shall not suspend execution of the calling thread if status is not immediately available for one of the child processes specified by pid. 
WUNTRACED
    The status of any child processes specified by pid that are stopped, and whose status has not yet been reported since they stopped, shall also be reported to the requesting process.

# sigset
- int sigemptyset (sigset_t * ens); Initialise l’ensemble de signaux « ens » à l’ensemble vide.

- int sigfillset (sigset_t * ens); Remplit l’ensemble « ens » avec tous les signaux.

- int sigaddset (sigset_t * ens, int sig); Ajoute le signal « sig » à l’ensemble « ens ».

- int sigdelset (sigset_t * ens, int sig); Retire le signal « sig » de l’ensemble « ens ».

- int sigismember (const sigset_t * ens, int sig); Retourne vrai si le signal « sig » appartient à l’ensemble « ens ».

*Blocage ou Masquage des signaux*
int sigprocmask(int opt, const sigset_t *ens, sigset_t *ens_ancien);
    La valeur de retour de la fonction est 0 ou -1 selon qu'elle est ou non bien déroulée
**opt**
« SIG_SETMASK » => Nouveau masque = « ens ».
« SIG_BLOCK » => Nouveau masque = « ens » U « ens_ancien »
« SIG_UNBLOCK » => Nouveau masque :«ens_ancien» - «ens »
**ens_ancien**
If ens_ancien is non-NULL, the previous value of the signal mask is stored in ens_ancien. 

*Liste des signaux pendant*
int sigpending(sigset_t *ens) ;
Le code retour de la fonction est 0 si elle est bien déroulée ou -1 sinon.
Retourne dans « ens » la liste des signaux bloqués (en attente d’être pris en compte).

# exo
ex11 -> zombie
ex12 -> waitpid
ex13 -> sigset, pending

-----------------------------------------------------------------------

# pipe
* pipe, which is an area of main memory that is treated as a “virtual file”.
* If a process tries to read before something is written to the pipe, the process is suspended until something is written.
int pipe(int fds[2]);

Parameters :
fd[0] will be the fd(file descriptor) for the 
read end of pipe.
fd[1] will be the fd for the write end of pipe.
Returns : 0 on Success.
-1 on error.

Pipes behave FIFO(First in First out), Pipe behave like a queue data structure. Size of read and write don’t have to match here. We can write 512 bytes at a time but we can read only 1 byte at a time in a pipe.

ex16 -> pipe
ex17 et ex17_1 -> mkfifo
ex18 -> pipe from https://www.geeksforgeeks.org/pipe-system-call/
ex19 -> terminal mkfifo
ex20 -> pipe with 2 child
ex21 -> pipe with father and child