#include <iostream>

class A{
    int na ;
public :
    A (int nn=1){
        na = nn ; 
        std::cout << "**construction objet A " << na << "\n" ;
    }
} ;

class B : public A{
    float xb ;
public :
    B (float xx=0.0){
        xb = xx ; 
        std::cout << "**construction objet B " << xb << "\n" ;
    }
} ;

class C : public A{
    int nc ;
public :
    C (int nn= 2) : A (2*nn+1){
        nc = nn ;
        std::cout << "**construction objet C " << nc << "\n" ;
    }
} ;

class D : public B, public C{
    int nd ;
    public :D (int n1, int n2, float x) : C (n1), B (x){
        nd = n2 ;
        std::cout << "**construction objet D " << nd << "\n" ;
    }
} ;

main(){
    D d (10, 20, 5.0) ;
}