//ayoub-ben
#include <iostream>

class vect{
protected:
    int size ; 
    int *adr ; 

public :
    vect(int); 
    ~vect();
    int & operator [] (const int); 
};

vect::vect(int s){
    size = s;
    adr = new int[s];
}

vect::~vect(){
    delete[] adr;
}

int &vect::operator[](const int i){
    return adr[i];
}

class vectok : public vect{
public:
    vectok(int size) : vect(size){
        std::cout << "constructor" << std::endl;
    }

    vectok(const vectok &v) : vect(v.size){
        std::cout << "cpy constructor" << std::endl;
        size = v.size;
        for(int i = 0; i < size; i++)
            adr[i] = v.adr[i];
    }

    vectok &operator= (vectok &vec){
        std::cout << "operator=" << std::endl;
        if(this != &vec){
            size = vec.size;
            delete []adr;
            adr = new int[vec.size];
            for(int i = 0; i < size; i++)
                adr[i] = vec.adr[i];
        }
        return *this;
    }

    int length(){
        return size;
    }
};

//&v perf
std::ostream &operator <<(std::ostream &stream, vectok v){
    stream << "[";
    for(int i = 0; i < v.length() - 1; i++)
        stream << v[i] << ", ";
    stream << v[v.length() - 1] << "]";
    return stream;
}



int main(){
    int i;
    vectok vec1 = vectok(10);
    vectok vec2 = vectok(15);

    for (i=0 ; i < vec1.length() ; i++) 
        vec1[i] = i;
    std::cout << "vect1 = " << vec1 << std::endl;

    for (i=0 ; i < vec2.length() ; i++) 
        vec2[i] = i * 2;
    std::cout << "vect2 = " << vec2 << std::endl;

    vec2 = vec1;
    std::cout << "vect1 = " << vec1 << std::endl;
    std::cout << "vect2 = " << vec2 << std::endl;
    return 0; 
}