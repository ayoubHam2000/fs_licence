

Ici, comme le constructeur de C n�a pr�vu aucun argument pour un �ventuel constructeur de A,
il y aura appel d�un constructeur sans argument, c�est-�-dire, en fait, appel du constructeur de
A, avec toutes les valeurs pr�vues par d�faut. Voici le r�sultat obtenu :
	
** construction objet B : 1 0
** construction objet A : 2 1
** construction objet C : 3 3
** construction objet B : 1 5
** construction objet A : 2 1
** construction objet C : 12 21
