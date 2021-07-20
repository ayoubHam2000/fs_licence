//ayoub-ben
#include <iostream>


int main(){
    int n;
    int i;
    int u1 = 1;
    int u2 = 1;
    
    std::cout << "Donner n : " << std::endl; 
    std::cin >> n;

    if(n < 0){
        std::cout << "Error" << std::endl;
        exit(1);
    }
        
    i = 0;
    while(i < n - 1){
        u2 = u2 + u1;
        u1 = u2 - u1;//u2 + u1 - u1 = u2
        i++;
    }
    std::cout << "u(" << n << ") = " << u2 << std::endl; 
    


    return 0;
}