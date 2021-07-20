#ifndef CLASS_DEF
#define CLASS_DEF

class Point{
private:
    static int point_nbr;
    float x;
    float y;

public:
    Point(float startX, float startY);
    ~Point();
    void display();
    void deplace(float dx, float dy);
};

#endif