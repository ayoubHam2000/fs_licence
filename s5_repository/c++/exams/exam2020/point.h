#ifndef POINT
#define POINT
#include <iostream>

typedef int T;

class Point{
    T x, y;
public:
    Point();
    Point(T x, T y);
    void operator++();
    bool operator==(Point b);
    friend std::ostream &operator<<(std::ostream &, Point);
    friend Point operator* (int , Point );
    Point operator+(Point);
    Point operator-(Point);
};

class Pixel{
    Point p;
    unsigned int color;
public:
    Pixel(T a, T b, int c);
    Pixel(Point u, int c);
    bool operator==(Pixel);
    friend std::ostream &operator << (std::ostream &, Pixel &);
};

class PixelV2 : public Point{
    unsigned int color;

public:
    PixelV2(T a, T b, int c);
    PixelV2(Point u, int c);
    bool operator==(PixelV2);
    friend std::ostream &operator << (std::ostream &, PixelV2 &);
};

#endif