

Dans la fonction affiche de point, l�appel de identifie fait l�objet d�une ligature dynamique (puisque cette derni�re fonction a �t� d�clar�e virtuelle). Lorsqu�un objet de type pointcol appelle une fonction affiche, ce sera bien la fonction affiche de point qui sera
appel�e (puisque affiche n�est pas red�finie dans pointcol). Mais cette derni�re fera appel,
dans ce cas, � la fonction identifie de pointcol. Bien entendu, lorsqu�un objet de type
point appelle affiche, cette derni�re fera toujours appel � la fonction identifie de point
(le m�me r�sultat serait obtenu sans ligature dynamique).
Voici les r�sultats complets fournis par notre programme :
Je suis un point
Mes coordonn�es sont : 3 4
Je suis un point color� de couleur : 5
Mes coordonn�es sont : 5 9
--------------------------
Je suis un point
Mes coordonn�es sont : 3 4
Je suis un point color� de couleur : 5
Mes coordonn�es sont : 5 9
---------------
Je suis un point color� de couleur : 5
Mes coordonn�es sont : 5 9
Je suis un point color� de couleur : 5
Mes coordonn�es sont : 5 9
