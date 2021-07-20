#ifndef CLASS_DEF_11
#define CLASS_DEF_11

class Point{
private:
    float x;
    float y;

public:
    Point(float startX, float startY);
    void deplace(float dx, float dy);
    float abscisse();
    float ordonnee();
};

#endif