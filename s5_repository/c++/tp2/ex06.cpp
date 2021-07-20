#include <iostream>
using namespace std;

class demo{
    int x, y;
public :
    demo(int abs = 1, int ord = 0){ 
        x = abs; 
        y = ord;
        cout << "constructeur I : " << x << " " << y << "\n";
    }

    demo(const demo &d){
        cout << "constructeur II (recopie) : " << d.x << " " << d.y << "\n";
        x = d.x; 
        y = d.y;
    }

    ~demo (){
        cout << "destruction : " << x << " " << y << "\n";
    }
};


int main(){
    void fct (demo, demo *); 
    cout << "debut";
    demo a;
    demo b = 2;
    demo c = a;
    demo * adr = new demo (3,3);
    fct (a, adr);
    demo d = demo (4,4);
    c = demo (5,5);
    cout << "fin main\n";
    
    return 0;
}

void fct (demo d, demo * add){
    cout << "enter fct\n" ;
    delete add;
    cout << "sortie fct\n" ;
}