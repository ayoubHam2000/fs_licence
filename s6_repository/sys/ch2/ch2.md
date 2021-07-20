# include
signal.h

# bash 
kill -l 
    -> return all signals in the Sys
    -> can't know the parent of signal
    -> Un signal pendant (pending) est un signal en attente d’être pris en compte.
    -> Un signal est délivré lorsqu'il est pris en compte par le processus qui le reçoit.
    -> La prise en compte d’un signal entraîne l’exécution d’une fonction spécifique appelée handler


# Signal
    ->Pour tous les signaux, l’utilisateur peut remplacer le handler par défaut
    -> L’exception de certains signaux qui ont des statuts particuliers et qui ne peuvent pas être interceptés, bloqués ou ignorés

    SIGKILL -> permet de tuer un processus.
    SIGSTOP -> permet de stopper un processus (stopper pour reprendre plus tard,pas arrêter).
    SIGCOUNT -> permet de faire reprendre l’exécution d’un processus stoppé (après un « SIGSTOP »).

    ctl+c => SIGINT Interruption terminal
    ctl+d => SIGQUIT Terminaison 
    ctl+z => SIGTSTP Suspension terminal
*SIG_DFL*
*SIG_IGN*

**Un processus peut envoyer un signal à un autre processus ou à un groupe de processus.**

# Send Sgnial by kill
    - using bash kill or c kill function
    - kill signal pid => kill -SIGKILL 10255
    - int kill(pid_t pid, int sig) ;
        -> sig = 0 -> aucun signal n’est envoyé -> 0 (pasd’erreur) le processus de numéro « pid » existe).
        -> Si pid > 0, le signal est envoyé au processus d’identité « pid ».
        -> Si pid=0, le signal est envoyé à tous les processus qui sont dans le même groupe que le processus émetteur
        -> Si pid=-1, le signal est envoyé à tous les processus.
        -> Si pid < -1, le signal est envoyé à tous les processus du groupe de numéro |pid|.
        -> return -1 -> error

# Send Sgnial by signal() and customize the handler
signal (int sig, new_handler);
La fonction « new_handler » est exécutée par le processus à la réception du signal. Elle reçoit le numéro du signal. A la fin de l'exécution de cette fonction, l'exécution du processus reprend au point où elle a été suspendue.

# Sigaction
    int sigaction(int sig, struct sigaction *action, struct sigaction *action_ancien );
    struct sigaction {
        void (*sa_handler)() ;
        sigset_t sa_mask ;
        int sa_flags ; 
    }
    -> sa_mask : correspond à l’ensemble de signaux supplémentaires, à masquer(bloquer) pendant l’exécution du handler, en plus des signaux déjà masqués.
    -> sa_flags : indique des options liées à la gestion du signal
    -> Si la fonction n’est ni « SIG_DFl » ni «SIG_IGN», le signal « sig » ainsi que ceux contenus dans la liste « sa_mask » de la structure « action » seront masqués pendant le traitement.

# pause, raise, alarm
pause : stop the process until receiving a signal
raise : int raise(int sig) <==> kill(getpid(), sig)
alarm : 

# exo
ex04 -> signal, kill
ex05 -> change signal
ex06 -> change signal of child
ex07 -> Sigaction
ex08 -> signal
ex09 -> pause
ex10 -> alarm


# search
signal-safety --- async-signal-safe fucntions
for portablity reasons use segaction
the command `fg` will restore the stoped process