//ayoub-ben
#include <iostream>

struct Essai{
    int n;
    float x;
};


void razType1(Essai *e){
    e->n = 0;
    e->x = 0.0;
}

void razType2(Essai &e){
    e.n = 0;
    e.x = 0.0;
}

int main(){
    Essai a = {10, 10};

    //razType1(&a);
    razType2(a);

    std::cout << "essai.n = " << a.n << std::endl;
    std::cout << "essai.x = " << a.x << std::endl;

    return 0;
}