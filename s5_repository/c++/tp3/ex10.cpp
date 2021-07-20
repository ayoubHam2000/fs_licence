//ayoub-ben
#include <iostream>

class vect{
    int nelem ;
    int * adr ;  

public :
    vect (int) ;  
    ~vect () ;  
    int & operator [] (int) ; 

};

vect::vect(int size){
    nelem = size;
    adr = new int[size];
}

vect::~vect(){
    delete []adr;
}

int &vect::operator[] (int index){
    return adr[index];
}


class vectb : public vect{
    int start;
    int end;
public:
    vectb(int a, int b) : vect(b - a + 1){
        start = a;
        end = b;
    }

    int &operator[] (int index){
        return vect::operator[](index - start);
    }


};


int main(){
    return 0;
}