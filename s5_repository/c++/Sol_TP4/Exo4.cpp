

Dans la d�claration des classes B et C, il faut indiquer que la classe A est � virtuelle �, de fa�on
qu�elle ne soit incluse qu�une fois dans d��ventuelles descendantes de ces classes. D�autre
part, le constructeur de D doit pr�voir, outre les arguments pour les constructeurs de B et de C,
ceux destin�s � un constructeur de A.
En r�sum�, la d�claration de A reste inchang�e, celle de B est transform�e en :
	
class B : public virtual A
{ // le reste est inchang�
}

Celle de C est transform�e de fa�on analogue :

class C : public virtual A
{ // le reste est inchang�
}

Enfin, dans D, l�en-t�te du constructeur devient :

D (int n1, int n2, float x) : C (n1), B (x), A (2*n1+1)

� titre indicatif, voici les r�sultats que fournirait le programme pr�c�dent ainsi transform� :

**construction objet A 21
**construction objet B 5
**construction objet C 10
**construction objet D 20
