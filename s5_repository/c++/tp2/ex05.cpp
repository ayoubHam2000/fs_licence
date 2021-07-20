#include <iostream>


class Chose{
public:
    Chose(){
        std::cout << "creation objet de type chose" << std::endl;
    }

    ~Chose(){
        std::cout << "destruction objet de type chose" << std::endl;
    }
};


int main(){
    {
        Chose a;
        std::cout << "Bonjoure" << std::endl;
    }
    std::cout << "------------------------" << std::endl;

    Chose *b = new Chose(); //just creation without calling desrector
    return 0;
}