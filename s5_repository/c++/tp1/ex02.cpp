//ayoub-ben
#define Unit 2.54
#include <iostream>

void ifCase(const char &toUnit, const float &value){
    if(toUnit == 'C' || toUnit == 'c'){
        std::cout << value * Unit << std::endl;
    }else if (toUnit == 'p' || toUnit == 'P'){
        std::cout << value / Unit << std::endl;
    }else{
        std::cout << "Error" << std::endl;
    }
}

void switchCase(const char &toUnit, const float &value){
    switch(toUnit){
        case 'C':
        case 'c':
            std::cout << value * Unit << std::endl;
            break;
        case 'P':
        case 'p':
            std::cout << value / Unit << std::endl;
            break;
        default:
            std::cout << "Error" << std::endl;
            break;
    }
}

int main(){
    char toCm;
    float value;

    std::cout << "Donner La Valeur : " << std::endl;
    std::cin >> value;
    std::cout << "Quelle Unite tu veux le transformer : Cm ou Pouce (c/p)" << std::endl;
    std::cin >> toCm;

    switchCase(toCm, value);
    //ifCase(toCm, value);

    return 0;
}