#include <iostream>


class Tab{
    int size;
    int *p;

public:
    Tab(int length){
        p = new int[length];
        size = length;
        for(int i = 0; i < length; i++)
            p[i] = 0;
    }

    ~Tab(){
        delete[] p;
    }



    int &operator [](int pos){
        return p[pos];
    }

    Tab operator = (Tab &b){
        delete[] p;
        p = new int[b.size];
        size = b.size;
        for(int i = 0; i < size; i++)
            p[i] = b[i];
        return *this;
    }

    friend std::ostream &operator <<(std::ostream &stream,  Tab &tab);

};

std::ostream &operator << (std::ostream &stream,  Tab &tab){
    stream << "[ ";
    for(int i = 0; i < tab.size - 1; i++)
        stream << tab[i] << ", ";
    stream << tab[tab.size - 1] << " ]";
    return stream;
}


int main(){

    Tab a = Tab(10);


    a[1] = 3;
    a[0] = 2;

    Tab b = Tab(10);

    b = a;
    b[2] = 10;

    std::cout << a << std::endl;
    std::cout << b << std::endl;

    return 0;
}

