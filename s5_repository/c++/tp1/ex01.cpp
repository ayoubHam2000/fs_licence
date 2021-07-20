//ayoub-ben
#include <iostream>
#include <string>


int main(){
    std::string name;
    std::string prenom;
    int age;

    std::cout << "Donner votre Nom" << std::endl;
    std::cin >> name;

    std::cout << "Donner votre prenom" << std::endl;
    std::cin >> prenom;

    std::cout << "Ton age" << std::endl;
    std::cin >> age;

    std::cout << "Bonjour " << name << " " << prenom << " ton age est " << age << " ans" << std::endl;

    return 0;
}