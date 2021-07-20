//ayoub-ben
#include <iostream>
#include "ex10.h"

Point::Point(float startX, float startY){
    x = startX;
    y = startY;
}

void Point::display(){
    std::cout << "(" << x << ", " << y << ")" << std::endl;
}

void Point::deplace(float dx, float dy){
    x += dx;
    y += dy;
}

int main(){
    Point a = Point(11.0, 10.0);

    a.display();
    a.deplace(10, 10);
    a.display();

    return 0;
}