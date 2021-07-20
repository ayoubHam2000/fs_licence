//ayoub-ben
#include <iostream>

class Vecteur3d{
    float v[3] ;
public :
    Vecteur3d (float c1=0.0, float c2=0.0, float c3=0.0){
        v[0] = c1;
        v[1] = c2;
        v[2] = c3;
    }

    float &operator[] (int);
};

float & Vecteur3d::operator[] (int index){
    if(index > 3)
        return (this->v[0]);
    return (this->v[index]);
}

int main(){
    Vecteur3d a = Vecteur3d(1, 2, 3);

    int i = a[1];
    std::cout << i << std::endl;

    a[1]++;
    i = a[1];
    std::cout << i << std::endl;
    return 0;
}