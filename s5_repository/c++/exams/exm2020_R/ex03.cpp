#include <iostream>
#define MAX_C 10
#define ADD_D 2
typedef int T;

class Ensemble{
    T *set;
    int size;
    int nbr;
public:
    bool contain(T);
    Ensemble(int = MAX_C);
    Ensemble(T*, int);
    Ensemble(const Ensemble&);
    ~Ensemble();
    Ensemble& operator=(Ensemble&);
    bool operator%(T);
    bool operator==(Ensemble&);
    bool operator<(Ensemble&);
    friend std::ostream& operator<<(std::ostream&, Ensemble &);
    friend Ensemble& operator<<(Ensemble&, T);
};

bool Ensemble::contain(T e){
    for(int i = 0; i < nbr; i++)
        if (e == set[i])
            return true;
    return false;
}

Ensemble::Ensemble(int length){
    set = new T[length];
    size = length;
    nbr = 0;
}

Ensemble::Ensemble(T *tab, int length){
    size = length;
    set = new T[length];
    nbr = 0;
    for(int i = 0; i < length; i++){
        if(!contain(tab[i])){
            set[nbr] = tab[i];
            nbr++;
        }
    }
}

Ensemble::Ensemble(const Ensemble &b){
    delete[] set;
    size = b.size;
    nbr = b.nbr;
    set = new T[size];

    for(int i = 0; i < nbr; i++){
        set[i] = b.set[i];
    }
}

Ensemble::~Ensemble(){
    delete[] set;
}

Ensemble& Ensemble::operator=(Ensemble &b){
    delete[] set;
    size = b.size;
    nbr = b.nbr;
    set = new T[size];

    for(int i = 0; i < nbr; i++){
        set[i] = b.set[i];
    }
}

bool Ensemble::operator%(T b){
    return contain(b);
}

bool Ensemble::operator==(Ensemble &b){
    if(nbr != b.nbr)
        return false;
    for(int i = 0; i < nbr; i++){
        if(!contain(b.set[i]))
            return false;
    }
    return true;
}

bool Ensemble::operator<(Ensemble &b){
    for(int i = 0; i < nbr; i++){
        if(!b.contain(set[i]))
            return false;
    }
    return true;
}

std::ostream &operator<<(std::ostream &stream, Ensemble &a){
    stream << "[";
    for(int i = 0; i < a.nbr - 1; i++){
        stream << a.set[i] << ", ";
    }
    stream << a.set[a.nbr - 1];
    stream << "]";
    return stream;
}

Ensemble& operator<<(Ensemble& a, T e){
    if(a.nbr == a.size){
        T *tab = new T[a.size + ADD_D];
        for(int i = 0; i < a.nbr; i++)
            tab[i] = a.set[i];
        tab[a.nbr] = e;
        a.nbr++;
        delete[] a.set;
        a.set = tab;
        a.size += ADD_D;
    }else{
        a.set[a.nbr] = e;
        a.nbr++;
    }
    return a;
}

int main(){
    Ensemble a = Ensemble(2);

    a << 2 << 3;
    std::cout << a << std::endl;
    a << 5;
    std::cout << a << std::endl;
    return 0;
}