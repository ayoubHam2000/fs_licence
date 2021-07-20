//ayoub-ben
#include <iostream>

int main(){
    int nbr;
    float moy;
    int i;

    moy = 0;
    i = 0;
    nbr = -1;
    while(nbr != 0){
        std::cout << "Donner un number > 0 : ";
        std::cin >> nbr;
        if(nbr < 0){
            std::cout << "ERROR" << std::endl;
        }else if (nbr != 0){
            i++;
            moy += nbr;
        }
    }
    if(i == 0)
        std::cout << "PAS DE MOYENNE." << std::endl;
    else
        std::cout << "MOYENNE EST : " << moy / i << std::endl;
    return 0;
}