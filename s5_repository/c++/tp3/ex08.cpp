#include <iostream>

class point{
    float x, y ;
public :

    point (float abs=0.0, float ord=0.0){
        x = abs ; y = ord ;
    }
    
    void affiche (){
        std::cout << "Coordonn est : " << x << " " << y << "\n" ;
    }
        
    void deplace (float dx, float dy){
        x = x + dx ; y = y + dy ;
    }
} ;

class pointcol
{ 
	point p ;
	int cl ;
	public :
		pointcol (float = 0.0, float = 0.0, int = 0) ;
		void colore (int coul)
		{ 
			cl = coul ;
		}
	void affiche () { 
		p.affiche () ; // affiche doit appeler affiche
		std::cout << " couleur : " << cl ; // du point p pour les
		// coordonnes
	}
} ;

/*

l’utilisateur de cette nouvelle classe ne peut plus faire directement
appel aux fonctions membre héritées de point. Ainsi, pour appliquer la méthode deplace à
un objet a de type point, il devrait absolument écrire : a.p.deplace (...) ; or, cela n’est
pas autorisé ici, puisque p est un membre privé de pointcol.


*/
