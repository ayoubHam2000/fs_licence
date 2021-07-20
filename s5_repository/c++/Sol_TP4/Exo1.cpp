
L’objet c1 est créé par appels successifs des constructeurs de B, puis de A (ordre imposé par la
déclaration de la classe C, et non par l’en-tête du constructeur de C !). Le jeu de la transmission
des arguments et des arguments par défaut conduit au résultat suivant :
	
** construction objet B : 1 0
** construction objet A : 1 1
** construction objet C : 3 3
** construction objet B : 1 5
** construction objet A : 10 1
** construction objet C : 12 21
