//ayoub-ben
#include <iostream>
#include "ex13.h"

int Point::point_nbr = 0;

Point::Point(float startX, float startY){
    x = startX;
    y = startY;
    point_nbr++;
}

Point::~Point(){
    point_nbr--;
}

void Point::display(){
    std::cout << "(" << x << ", " << y << ")" << " Nomber de point : " << point_nbr << std::endl;
}

void Point::deplace(float dx, float dy){
    x += dx;
    y += dy;
}

int main(){

    Point a = Point(11.0, 10.0);
    a.display();

    Point b = Point(11.0, 10.0);
    b.display();

    Point c = Point(11.0, 10.0);
    c.display();

    Point d = Point(11.0, 10.0);
    d.display();

    {
        //scope to make sure that the distructor work
        Point e = Point(11.0, 10.0);
        e.display();
    }
    
    a.display();

    return 0;
}