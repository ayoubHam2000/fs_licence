//ayoub-ben
#include <iostream>

int main(){
    
    int x = 0;
    int choix;

    do{
        std::cout<<"x vaut "<<x<<std::endl;
        std::cout<<"1 : Ajouter 1"<<std::endl;
        std::cout<<"2 : Multiplier par 2"<<std::endl;
        std::cout<<"3 : Soustraire 4"<<std::endl;
        std::cout<<"4 : Quitter"<<std::endl;

        std::cout<<"Votre choix : ";
        std::cin >> choix;
        switch(choix){
            case 1:
                x++;
                break;
            case 2:
                x *= 2;
                break;
            case 3:
                x -= 4;
                break;
        }
    }while(choix != 4);

    std::cout<<"La valeur finale de x vaut : "<< x << std::endl;


    return 0;
}