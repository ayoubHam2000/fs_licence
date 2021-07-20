#include <iostream>

int main(){
    int nbr;
    int min;

    std::cout << "Donner le Nomber 1" << std::endl;
    std::cin >> nbr;

    min = nbr;

    for(int i = 1; i < 10; i++){
        std::cout << "Donner le nomber " << i + 1 << std::endl;
        std::cin >> nbr;
        if(min > nbr)
            min = nbr;
    }

    std::cout << "Le Min est : " << min << std::endl;
    return 0;
}