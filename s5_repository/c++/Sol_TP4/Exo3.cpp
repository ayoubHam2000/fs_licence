

La construction d�un objet de type D entra�nera l�appel des constructeurs de B et de C, lesquels,
avant leur ex�cution, appelleront chacun un constructeur de A : dans le cas de B, il y aura
appel d�un constructeur sans argument (puisque l�en-t�te de B ne mentionne pas de liste
d�arguments pour A) ; en revanche, dans le cas de C, il s�agira (plus classiquement) d�un constructeur � un argument, comme mentionn� dans l�en-t�te de C.
Notez bien qu�il y a cr�ation de deux objets de type A. Voici les r�sultats obtenus :
	
**construction objet A 1
**construction objet B 5
**construction objet A 21
**construction objet C 10
**construction objet D 20
