#include <iostream>

class T{
    int i;
public:
    T(int n = 0){
        i = n;
        std::cout << "+ Constructeur : " << i << std::endl;
    }
    T(const T &v){
        i = v.i;
        std::cout << "* Constructeur par recopie " << i << std::endl;
    }
    ~T(){
        std::cout << "- Destructeur : " << i << std::endl;
    }
    T& operator++(){
        i++;
        return *this;
    }
    friend std::ostream& operator<<(std::ostream&, const T&);

};

std::ostream& operator<<(std::ostream& stream, const T& t){
    stream << t.i;
    return stream; 
}

void f1(T v){
    static T t = v;
    std::cout << "Fonction f1 - " << ++t << std::endl;
}

void f2(T &v){
    static T t = v;
    std::cout << "Fonction f2 - " << ++t << std::endl;
}

int main(){
    std::cout << "DEBUT\n";
    T u;
    std::cout << "---- Premier appel de f1 " << std::endl;
    f1(u);
    std::cout << "---- Second appel de f1 " << std::endl;
    f1(u);
    std::cout << "---- Premier appel de f2 " << std::endl;
    f2(u);
    std::cout << "---- Second appel de f2 "  << std::endl;
    f2(u);
    std::cout << "Fin\n";
    return 0; 
}

