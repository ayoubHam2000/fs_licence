#ifndef CLASS_DEF
#define CLASS_DEF

class Point{
private:
    float x;
    float y;

public:
    Point(float startX, float startY);
    void display();
    void deplace(float dx, float dy);
};

#endif