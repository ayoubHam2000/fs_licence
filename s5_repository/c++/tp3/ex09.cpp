//ayoub-ben

class point{
    int x, y ;
public :
    point (int = 0, int = 0) ;
    friend int operator == (const point&, const point&) ;
    friend point operator + (point, point) ;
} ;

point::point(int a, int b){
    x = a;
    y = b;
}

int operator == (const point &a, const point& b){
    return a.x == b.x && a.y == b.y ;
}

point operator + (point a, point b){
    point r;

    r.x = a.x + b.x;
    r.y = a.y + b.y;
    return r;
}

class pointcol : public point {
    int cl ;
public :
    pointcol (int = 0, int = 0, int = 0) ;
    //  ́eventuelles fonctions membre
};

pointcol::pointcol(int a, int b, int c) : point(a, b){
    cl = c;
}

int main(){
    pointcol a;
    pointcol b;
    point c;

    a == b;
    a == c;
    c == a;
    a == 5;
    5 == a;

    a + b;
    a + c;
    c + a;
    a + 5;
    5 + a;
    return 0;
}

/*
Les 5 instructions proposées sont correctes dans a/ et b/
D’une manière générale, x == y est interprété comme operator == (x, y).

Si x et y sont de type point, aucun problème ne se pose
Si l’un des opérandes est de type pointcol (ou les deux) il sera converti implicitement dans le type point.
Si l’un des opérandes est de type int, il sera converti implicitement dans le type point
(par utilisation du constructeur à un argument de point).

Si les arguments de operator= étaient transmis par référence, les deux dernières
affectations seraient rejetées à moins d’avoir en plus prévu l’attribut const.


*/