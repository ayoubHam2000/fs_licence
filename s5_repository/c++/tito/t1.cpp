#include <iostream>
#include <string>
#include <vector>
#include <cmath>

//chapeter 1
//chapeter 2

void fun(int a, int b = 5){
    std::cout << "a = " << a << "; b = " << b << std::endl;
}

//surcharge
void f(int a){
    std::cout << "int a = " << a << std::endl;
}

void f(float a){
    std::cout << "float a = " << a << std::endl;
}

inline double racine(double a){
    return std::sqrt(a);
}

int main(){

    int i = 5;

    #pragma region include string
    #if 0
    std::string s(25, 'a');
    std::string t = " new char ";
    s = s + t;
    std::cout << s << std::endl; //aaaaaaaaaaaaaaaaaaaaaaaaa new char
    #endif
    #pragma endregion

    #pragma region include vector
    //include vector
    #if 0

    std::vector<int> arr1;
    arr1.push_back(0);
    arr1.push_back(1);
    arr1.push_back(2);
    for(int i = 0; i < arr1.size(); i++)
        std::cout << arr1[i] << std::endl;
    arr1.erase(arr1.begin() + 1);

    std::cout << "------------------" << std::endl;
    for(int &ele : arr1)
        std::cout << ele << std::endl;
    arr1.insert(arr1.begin() + 1, 5);
    arr1.clear(); // removes all elements.

   
    std::cout << "------------------" << std::endl;
    std::vector<int> tab(10, 5);
    for(int &ele : tab)
        std::cout << ele << std::endl;

    std::cout << "------------------" << std::endl;
    std::vector<char> arr2 = {'a', 'b', 'c'};
    for(char &ele : arr2)
        std::cout << ele << std::endl;

    

    #endif
    #pragma endregion

    #pragma region surdefintion and inline
    #if 1

    //you can declare the prototype inside the function main 
    fun(10, 11); // a = 10; b = 11
    fun(10); // a = 10; b = 5

    //On parle de surdéfinition ou de surcharge lorsqu'un même symbole possède plusieurs significations différentes
    f(10);
    f(10.5f);

    //inline function
    //it can be used only on this file
    //https://www.geeksforgeeks.org/inline-functions-cpp/
    std::cout << "result : " << racine(16.00) << std::endl;


    #endif
    #pragma endregion

    return 0;
}