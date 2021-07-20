//ayoub-ben
#include <iostream>
#include <cmath>
#include "ex06.h"

#pragma region def class point
void Point::initialise(float abs=0.0, float ord=0.0){
    x = abs ; y = ord ;
    std::cout << "cons point" << std::endl;
}

void Point::affiche(){
    std::cout << "Point de coordonn est : " << x << " " << y << "\n" ;
}

float Point::abs(){
    return x;
}

float Point::ord(){
    return y;
}
#pragma endregion


class Pointb : public Point{
public:

    Pointb(float x, float y){
        initialise(x, y);
        std::cout << "construct pointb" << std::endl;
    }

    #if Private
        float rho(){return sqrt(abs() * abs() + ord() * ord() );}
    #else
        float rho(){return sqrt(x * x + y * y);}
    #endif


};

int main(){
    Pointb b = Pointb(10, 10);

    b.affiche();
    return 0;
}