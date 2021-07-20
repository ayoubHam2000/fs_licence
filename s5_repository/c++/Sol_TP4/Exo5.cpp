

Dans les instructions 1, adp (de type point *) pointe sur un objet de type point, tandis que
adpc (de type pointcol *) pointe sur un objet de type pointcol. Il y a appel de la fonction
affiche, respectivement de point et de pointcol ; l�existence du � typage dynamique �
n�appara�t pas clairement puisque, m�me en son absence (c�est-�-dire si la fonction affiche
n�avait pas �t� d�clar�e virtuelle), on aurait obtenu le m�me r�sultat.
En revanche, dans les instructions 2, adp (de type point *) pointe maintenant sur un objet
de type pointcol. Gr�ce au typage dynamique, adp->affiche() appelle bien la fonction
affiche du type pointcol.

Voici les r�sultats complets fournis par ce programme :

Je suis un point
mes coordonn�es sont : 3 5
Je suis un point color�
mes coordonn�es sont : 8 6 et ma couleur est : 2
-----------------
Je suis un point color�
mes coordonn�es sont : 8 6 et ma couleur est : 2
Je suis un point color�
mes coordonn�es sont : 8 6 et ma couleur est : 2
