

Dans les instructions 1, adp (de type point *) pointe sur un objet de type point, tandis que
adpc (de type pointcol *) pointe sur un objet de type pointcol. Il y a appel de la fonction
affiche, respectivement de point et de pointcol ; l’existence du « typage dynamique »
n’apparaît pas clairement puisque, même en son absence (c’est-à-dire si la fonction affiche
n’avait pas été déclarée virtuelle), on aurait obtenu le même résultat.
En revanche, dans les instructions 2, adp (de type point *) pointe maintenant sur un objet
de type pointcol. Grâce au typage dynamique, adp->affiche() appelle bien la fonction
affiche du type pointcol.

Voici les résultats complets fournis par ce programme :

Je suis un point
mes coordonnées sont : 3 5
Je suis un point coloré
mes coordonnées sont : 8 6 et ma couleur est : 2
-----------------
Je suis un point coloré
mes coordonnées sont : 8 6 et ma couleur est : 2
Je suis un point coloré
mes coordonnées sont : 8 6 et ma couleur est : 2
