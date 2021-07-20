//ayoub-ben
#include <iostream>

class point{
    int x, y;
public:
    point(int abs = 0, int ord = 0){
        x = abs;
        y = ord;
    }

    operator int(){
        return x;
    }
};

void dis(int a){
    std::cout << a << std::endl;
}


int main(){
    point p = point();
    int a;

    a = p;
    dis(a);
    dis(p);
    return 0;
}