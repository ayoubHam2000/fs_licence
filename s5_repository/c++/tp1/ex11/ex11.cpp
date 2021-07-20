//ayoub-ben
#include <iostream>
#include "ex11.h"

Point::Point(float startX, float startY){
    x = startX;
    y = startY;
}

void Point::deplace(float dx, float dy){
    x += dx;
    y += dy;
}

float Point::abscisse(){
    return x;
}

float Point::ordonnee(){
    return y;
}

int main(){
    Point a = Point(11.0, 10.0);

    std::cout << "(" << a.abscisse() << ", " << a.ordonnee() << ")" << std::endl;


    return 0;
}