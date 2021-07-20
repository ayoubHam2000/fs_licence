

La construction d’un objet de type D entraînera l’appel des constructeurs de B et de C, lesquels,
avant leur exécution, appelleront chacun un constructeur de A : dans le cas de B, il y aura
appel d’un constructeur sans argument (puisque l’en-tête de B ne mentionne pas de liste
d’arguments pour A) ; en revanche, dans le cas de C, il s’agira (plus classiquement) d’un constructeur à un argument, comme mentionné dans l’en-tête de C.
Notez bien qu’il y a création de deux objets de type A. Voici les résultats obtenus :
	
**construction objet A 1
**construction objet B 5
**construction objet A 21
**construction objet C 10
**construction objet D 20
