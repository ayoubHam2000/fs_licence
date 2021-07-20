//ayoub-ben
#include <iostream>

class Set_int{
    int size;
    int nbr;
    int *tab;

public:
    Set_int(int max){
        tab = new int[max];
        nbr = 0;
        size = max;
    }

    Set_int(const Set_int &other){
        delete []tab;
        tab = new int[other.size];
        size = other.size;
        nbr = other.nbr;

        for(int i = 0; i < size; i++)
            tab[i] = other.tab[i];
    }

    ~Set_int(){
        delete []tab;
    }

    void insert(int info){
        if(!appartient(info) && nbr < size){
            tab[nbr] = info;
            nbr++;
        }
    }

    int cardinal(){
        return nbr;
    }

    bool appartient(int info){
        for(int i = 0; i < nbr; i++){
            if(info == tab[i])
                return true;
           
        }
         return false;
    }
};

int main(){
    Set_int set = Set_int(30);
    int n;

    std::cout << "Donner 20 elements : " << std::endl;

    for(int i = 0; i < 20; i++){
        std::cin >> n;
        set.insert(n);
    }

    std::cout << "Nomber des element est : " << set.cardinal() << std::endl;
    return 0;
}