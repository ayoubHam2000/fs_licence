#include <iostream>

class point{
    int num;
    static int nbr_point;

public:
    point(){
        nbr_point++;
        num = nbr_point;
        std::cout << "create point : " << nbr_point << std::endl;
    }

    ~point(){
        std::cout << "destroy point : " << num << std::endl;
    }

};

int point::nbr_point = 0;



int main(){
    point *adcourb = new point[4];
    delete[] adcourb;
    return 0;
}