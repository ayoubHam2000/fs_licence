

Dans la fonction affiche de point, l’appel de identifie fait l’objet d’une ligature dynamique (puisque cette dernière fonction a été déclarée virtuelle). Lorsqu’un objet de type pointcol appelle une fonction affiche, ce sera bien la fonction affiche de point qui sera
appelée (puisque affiche n’est pas redéfinie dans pointcol). Mais cette dernière fera appel,
dans ce cas, à la fonction identifie de pointcol. Bien entendu, lorsqu’un objet de type
point appelle affiche, cette dernière fera toujours appel à la fonction identifie de point
(le même résultat serait obtenu sans ligature dynamique).
Voici les résultats complets fournis par notre programme :
Je suis un point
Mes coordonnées sont : 3 4
Je suis un point coloré de couleur : 5
Mes coordonnées sont : 5 9
--------------------------
Je suis un point
Mes coordonnées sont : 3 4
Je suis un point coloré de couleur : 5
Mes coordonnées sont : 5 9
---------------
Je suis un point coloré de couleur : 5
Mes coordonnées sont : 5 9
Je suis un point coloré de couleur : 5
Mes coordonnées sont : 5 9
