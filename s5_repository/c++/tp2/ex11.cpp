//ayoub-ben
#include <iostream>

class Vecteur3d{
    float x, y, z ;
public :
    Vecteur3d (float c1=0.0, float c2=0.0, float c3=0.0){
        x = c1 ; 
        y = c2 ; 
        z = c3 ;
    }


    friend Vecteur3d operator+(Vecteur3d a, Vecteur3d b);
    friend Vecteur3d operator*(Vecteur3d a, Vecteur3d b);
    friend std::ostream &operator<< (std::ostream &stream, Vecteur3d a);

};

Vecteur3d operator+(Vecteur3d a, Vecteur3d b){
    Vecteur3d res = Vecteur3d();

    res.x = a.x + b.x;
    res.y = a.y + b.y;
    res.z = a.z + b.z;
    return res;
}

Vecteur3d operator*(Vecteur3d a, Vecteur3d b){
    Vecteur3d res = Vecteur3d();

    res.x = a.x * b.x;
    res.y = a.y * b.y;
    res.z = a.z * b.z;
    return res;
}

std::ostream &operator<< (std::ostream &stream, Vecteur3d a){
    stream << "[" << a.x << ", " << a.y << ", " << a.z << "]";
    return stream;
}

int main(){
    Vecteur3d a = Vecteur3d(1, 2, 3);
    Vecteur3d b = Vecteur3d(3, 2, 1);


    Vecteur3d res1 = a + b;
    std::cout << res1 << std::endl;

    Vecteur3d res2 = a * b;
    std::cout << res2 << std::endl;

    return 0;
}