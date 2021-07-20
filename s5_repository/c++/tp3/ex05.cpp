//ayoub-ben
#include <iostream>

using namespace std;

class point{
    int x, y;
public :

    point (int abs=0, int ord=0){ 
        // constructeur 0, 1 ou 2 arguments
        x = abs ; 
        y = ord ;
        cout << "$$ construction point : " << x << " " << y << "\n" ;
    }

    friend point operator + (point, point) ; // point + point --> point
    void affiche (){
        cout << "Coordonn est : " << x << " " << y << "\n" ;
    }
};

point operator+ (point a, point b){
    point r ;
    r.x = a.x + b.x ; 
    r.y = a.y + b.y ;
    return r ;
}

int main(){
    point a, b(2,4) ;
    a = b + 6 ; 
    // affectation 1
    a.affiche() ;
    a = 6 + b ; 
    // affectation 2
    b.affiche() ;
    return 0;
}