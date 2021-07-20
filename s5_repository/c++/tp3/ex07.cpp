//ayoub-ben
#include <iostream>

class point{
    float x, y ;
public :

    point (float abs=0.0, float ord=0.0){
        x = abs ; y = ord ;
    }
    
    void affiche (){
        std::cout << "Coordonn est : " << x << " " << y << "\n" ;
    }
        
    void deplace (float dx, float dy){
        x = x + dx ; y = y + dy ;
    }
} ;

class pointcol : public point{
    int cl;
public:

    pointcol(float, float, int);

    void affiche(){
        point::affiche();
        std::cout << "color : " << cl << std::endl;
    }

    void color(int coleur){
        cl = coleur;
    }

};

pointcol::pointcol(float abs, float ord, int color) : point(abs, ord){
    cl = color;
}

int main(){

    pointcol a = pointcol(2.5, 3.25, 5);

    a.affiche();
    return 0;
}