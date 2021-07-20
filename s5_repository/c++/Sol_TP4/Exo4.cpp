

Dans la déclaration des classes B et C, il faut indiquer que la classe A est « virtuelle », de façon
qu’elle ne soit incluse qu’une fois dans d’éventuelles descendantes de ces classes. D’autre
part, le constructeur de D doit prévoir, outre les arguments pour les constructeurs de B et de C,
ceux destinés à un constructeur de A.
En résumé, la déclaration de A reste inchangée, celle de B est transformée en :
	
class B : public virtual A
{ // le reste est inchangé
}

Celle de C est transformée de façon analogue :

class C : public virtual A
{ // le reste est inchangé
}

Enfin, dans D, l’en-tête du constructeur devient :

D (int n1, int n2, float x) : C (n1), B (x), A (2*n1+1)

À titre indicatif, voici les résultats que fournirait le programme précédent ainsi transformé :

**construction objet A 21
**construction objet B 5
**construction objet C 10
**construction objet D 20
