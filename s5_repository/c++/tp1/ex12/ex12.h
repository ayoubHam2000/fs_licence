#ifndef EX12
#define EX12

class Point{
private:
    float x;
    float y;

public:
    Point(float startX, float startY);
    void deplace(float dx, float dy);
    float abscisse();
    float ordonnee();
    void homothetie(float k);
    void rotation(float alpha);
    float rho();
    float theta();
};

#endif