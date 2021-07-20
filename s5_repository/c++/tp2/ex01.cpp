#include <iostream>
#define Q1 0
#define Q2 1
#define Q3 0

//question 1 en utilisant des fonctions membre surdefinies ;
#if Q1 
class Vector3{
public:
    float x, y, z;
    Vector3();
    Vector3(float, float, float);

};

Vector3::Vector3(){
    x = 0;
    y = 0;
    z = 0;
}

Vector3::Vector3(float i_x, float i_y, float i_z){
    x = i_x;
    y = i_y;
    z = i_z;
}
#endif


//question 2 en utilisant une seule fonction membre ;
#if Q2 
class Vector3{
public:
    float x, y, z;
    Vector3(float = 0.0, float = 0.0, float = 0.0);

};

Vector3::Vector3(float i_x, float i_y, float i_z){
    x = i_x;
    y = i_y;
    z = i_z;
}
#endif

//question 3 en utilisant une seule fonction en ligne.
#if Q3

class Vector3 {
public:
    float x, y, z;
    Vector3(float i_x = 0.0, float i_y = 0.0, float i_z = 0.0){
        x = i_x;
        y = i_y;
        z = i_z;
    }
};

#endif



void printVec3(Vector3 &vec){
    std::cout << "(" << vec.x << ", " << vec.y << ", " << vec.z << ")" << std::endl;
}

int main(){
    
    Vector3 a = Vector3(1, 1, 1);
    printVec3(a);

    #if !Q1
    Vector3 b = Vector3(1, 1);
    printVec3(b);

    Vector3 c = Vector3(1);
    printVec3(c);
    #endif

    Vector3 d = Vector3();
    printVec3(d);

    return 0;
}