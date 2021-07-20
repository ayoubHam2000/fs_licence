ex01
pipe before fork

Rappel sur les tubes anonymes :
- Les tubes anonymes sont un moyen de communication unidirectionnels entre processus

- Les processus communicant avec un tube anonyme (pipe()) doivent avoir un lien de parenté.

- Deux descripteurs pour manipuler un tube
    – Un descripteur pour la lecture
    – Un autre pour l’écriture

- Un tube est une file de type FIFO (premier écrit, premier lu)

- Ce qui est lu quitte définitivement le tube et ne peut être relu

- ls sont implémentés comme des fichiers mais n’ayant aucun nom physique (il n’existe que pendant l’exécution du programme).

- Si le tube est créé par un processus avant la création de ses fils, alors ses fils héritent les descripteur du père. Par conséquent , il faut utiliser pipe avant d’utiliser fork.

La pipe (tube) est alors automatiquement partagée entre le père et le fils.

Après sa création, un tube est directement utilisable. Par contre, sa fermeture se fait en appelant la fonction close().


ex02
write(des[1], &i, sizeof(int));