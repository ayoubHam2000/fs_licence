#ifndef EX06
#define EX06
#define Private 1 //ques 2

class Point{

#if Private
private:
    float x, y ;
#else
protected:
    float x, y;
#endif

public :
    void initialise (float, float);
    void affiche ();
    float abs ();
    float ord ();
};

#endif