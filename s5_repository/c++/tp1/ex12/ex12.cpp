//ayoub-ben
#include <iostream>
#include "ex12.h"
#include <cmath>
#define PI 3.14159265358979323846

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

void Point::homothetie(float k){
    x *= k;
    y *= k;
}

float Point::rho(){
    return std::sqrt(x * x + y * y);
}

float Point::theta(){
    //implementation of atan2();
    float angle = 0;

    if(x != 0){
        angle = std::atan(y / x);
        if(x < 0)
            angle += y < 0 ? -PI : PI;
    }else if (y != 0){
        angle = y > 0 ? PI / 2 : -PI / 2;
    }
    return angle;
}

void Point::rotation(float alpha){
    float length;
    float angle;

    length = rho();
    angle = theta(); //we can simply chose std::atan2();
    angle += (PI * alpha) / 180; //alpha from degree to gradian
    x = std::cos(angle) * length;
    y = std::sin(angle) * length;
}

void display(Point p){
    std::cout << "(" << p.abscisse() << ", " << p.ordonnee() << ")" << std::endl;
}

int main(){
    Point p = Point(0, 30);

    display(p);
    //p.homothetie(10);
    p.rotation(90);
    display(p);

    

    return 0;
}