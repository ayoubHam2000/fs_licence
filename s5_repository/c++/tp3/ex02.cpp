//ayoub-ben
#include <iostream>

using namespace std;

class point{
    int x, y ;
public :
    point (int abs, int ord){
        // constructeur 2 argumentsx = abs ; y = ord ;
    }
    
    operator int(){  
        // "cast" point --> int
        cout << "*** appel int() pour le point " << x << " " << y << "\n" ;
        return x ;
    }

};

main(){
    point a(1,5), 
    b(2,8) ;
    int n1, n2, n3 ;
    n1 = a + 3 ; 
    // instruction 1
    cout << "n1 = " << n1 << "\n" ;
    n2 = a + b ; 
    // instruction 2
    cout << "n2 = " << n2 << "\n" ;

    double z1, z2 ;
    z1 = a + 3 ; 
    // instruction 3
    cout << "z1 = " << z1 << "\n" ;
    z2 = a + b ; 
    // instruction 4
    cout << "z2 = " << z2 << "\n" ;
}

//2 - question déjà traité