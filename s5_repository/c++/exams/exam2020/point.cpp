#include <iostream>
#include "point.h"

Point::Point(){
    x = 0;
    y = 0;
}

Point::Point(T x, T y){
    this->x = x;
    this->y = y;
}

void Point::operator++(){
    x++;
    y++;
}

bool Point::operator==(Point b){
    return x == b.x && y == b.y;
}

std::ostream & operator<<(std::ostream &stream, Point a){
    stream << "[" << a.x << ", " << a.y << "]";
    return stream;
}

Point Point::operator+(Point b){
    Point res(0, 0);
    
    res.x = x + b.x;
    res.y = y + b.y;
    return res;
}

Point Point::operator-(Point b){
    Point res(0, 0);

    res.x = x - b.x;
    res.y = y - b.y;
    return res;
}

Point operator*(int a, Point b){
    Point res(0, 0);

    res.x = a * b.x;
    res.y = a * b.y;
    return res;
}

//---------------------------------------------

Pixel::Pixel(T a, T b, int c){
    p = Point(a, b);
    color = c;
}

Pixel::Pixel(Point u, int c){
    p = u;
    color = c;
}

bool Pixel::operator==(Pixel b){
    return p == b.p && color == b.color;
}

std::ostream &operator<<(std::ostream &stream, Pixel &a){
    stream << a.p << " color : " << a.color ;
    return stream;
}

//---------------------------------------------

PixelV2::PixelV2(T a, T b, int c) : Point(a, b){
    color = c;
}

PixelV2::PixelV2(Point u, int c) : Point(u){
    color = c;
}

bool PixelV2::operator==(PixelV2 b){
    return (Point)(*this) == (Point)b && color == b.color;
}

std::ostream &operator<<(std::ostream &stream, PixelV2 &a){
    stream << (Point)a << " color : " << a.color ;
    return stream;
}




int main(){

    Point a(1, 2);
    const Point b (-1, 2);

    std::cout << 2 << " * " << a << " = " << 2 * a << std::endl;
    std::cout << a << " + " << b << " = " << a + b << std::endl;
    std::cout << a << " - " << b << " = " << a - b << std::endl;

    PixelV2 c = PixelV2(10, 2, 123);
    PixelV2 d = PixelV2(10, 2, 123);

    std::cout << c << std::endl;
    if (c == d)
        std::cout << "yes" << std::endl;
    else
        std::cout << "No" << std::endl;

 

    return 0;
}