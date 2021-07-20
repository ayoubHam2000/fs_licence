//ayoub-ben
#include <iostream>
#include <string>

//affiche les codes ASCII des caracteres composant une chaene de caracteres en hex avec length
void printASCII(const std::string &str){
    int i;

    std::cout << "Length ==> " << str.length() << std::endl << std::endl;
    
    for(i = 0; i < str.size(); i++){
        std::cout << '\'' << str[i] << '\'' << " ==> 0x" << std::hex << (int)str[i] << std::endl;
    }
    std::cout << '\'' << 0 << '\'' << " ==> 0x" << std::hex << 0 << std::endl;
}

int main(){
    std::string name;

    name = std::string("Hi There");
    printASCII(name);

    return 0;
}