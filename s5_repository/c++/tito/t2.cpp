#include <iostream>
#include <string>
#include <vector>
#include <cmath>

//chapeter 3 the principles of class
//chapeter 4 

class point{
public:
    int x;
    int y;
public:
    point(int ix, int iy){
        std::cout << "con point " << ix << std::endl;
        x = ix;
        y = iy;
    }
    ~point(){
        std::cout << "des point " << x << std::endl;
    }
};

class point_2{
    point a = point(1, 0);
public:
    point_2(point &ia){
        std::cout << "con point_2" << std::endl;
        a = ia;
    }

    ~point_2(){
        std::cout << "des point_2" << std::endl;
    }
};

int main(){



    #pragma region declaration de class
    #if 1

    //~ (tild)
    //S'il existe des destructeurs, ils seront appelés dans l'ordre inverse.
    //static var in function
    //static var in class
    
    //point a = point(2, 0);
    //point_2 b = point_2(a);

    //les declaration suivant sont equivalent
    point a = {1, 2};
    point b(10, 2);

    //les declaration suivant sont equivalent
    //the contructor does not called;
    point c = a;
    point d(a);

    //des point 2
    //Protected is like private but subclass can access the protected classes

    //ch4 -> 33
    //the class but they can be accessed by any subclass(derived class) of that class.
    //class => construteur superdefinie
    //class => momber en ligne
    //class => friend
    //method in class B friend to a class A => friend int B::searsh() in class A;
    //fucntion friend to a class A => friend void function() in class A;
    //all methods of class A friend to Class B => friend class B in class A; 
    //https://www.geeksforgeeks.org/friend-class-function-cpp/

    //ch4 -> 39
    //Surdéfinition d'opérateur [return type] operator [operator](point p1, point p2){}
    //point operator + (point a, point b){}
    //function operateur membre
    //function operateur not member => friend
    //return by adress in case of assignement to other variable;
    //std::ostream &operator <<(std::ostream &stream, Vector2D a)
    


    #endif
    #pragma endregion


    return 0;
}