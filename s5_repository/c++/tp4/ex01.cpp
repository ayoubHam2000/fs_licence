#include <iostream>

class A{
    int n ;
    float x ;
public :
    A (int p = 2){
        n = p ; 
        x = 1 ;
        std::cout << "** construction objet A : " << n << " " << x << "\n" ;
    }
} ;

class B{
    int n ;
    float y ;
public :
    B (float v = 0.0){
        n = 1 ; y = v ;
        std::cout << "** construction objet B : " << n << " " << y << "\n" ;
    }
};

//?? exercices instruction not complete !!