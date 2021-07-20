//ayoub-ben
#include <iostream>

class complexe{
    double x, y ;
public :
    complexe (double, double);
    complexe (const complexe &) ; 

    friend void fct(complexe);
} ;

complexe::complexe(double r=0, double i=0){
    x = r;
    y = i;
    std::cout << "call constructor with : x =  " << x << " and y = " << y << std::endl;
}

complexe::complexe(const complexe & z){
    x = z.x;
    y = z.y;

    std::cout << "call copy constructor with : x =  " << x << " and y = " << y << std::endl;
}

void fct(complexe z){
    return;
}

int main(){

    std::cout << std::endl;
    complexe z = complexe(1, 3);
    std::cout << std::endl;


// instruction 1
    std::cout << "z = 3.75" << std::endl;
    z = 3.75;  
    std::cout << std::endl;

 // instruction 2
    std::cout << "fct (2.8)" << std::endl;
    fct (2.8);    
    std::cout << std::endl;

// instruction 3
    std::cout << "z = 2" << std::endl;
    z = 2;         
    std::cout << std::endl;

 // instruction 4
    std::cout << "fct (4)" << std::endl;
    fct (4);      
    std::cout << std::endl;

    /*
    L’instruction 1 conduit à une conversion de la valeur double 3.75 en un complexe par appel
    du constructeur à un argument (compte tenu des arguments par défaut), suivie d’une affectation à z.

    L’instruction 2 conduit à une conversion de la valeur double 2.8 en un complexe (comme
    précédemment par appel du constructeur à un argument) ; 
    
    */

    return 0;
}