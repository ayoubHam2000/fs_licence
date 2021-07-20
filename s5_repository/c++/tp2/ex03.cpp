#include <iostream>
#include <cmath>
#define Q1 0
#define Q2 1
#define Q3 0

class Vector3{
public:
    float x, y, z;
    Vector3(float i_x = 0.0, float i_y = 0.0, float i_z = 0.0){
        x = i_x;
        y = i_y;
        z = i_z;
    }

    

    #if Q1
    Vector3 norMax(Vector3 a);
    #endif

    #if Q2
    Vector3 &norMax(Vector3 &a);
    #endif

    #if Q3
    Vector3 *norMax(Vector3 *a);
    #endif
};

#if Q1
Vector3 Vector3::norMax(Vector3 a){
    float na = pow(x, 2) + pow(y, 2) + pow(z, 2);
    float nb = pow(a.x, 2) + pow(a.y, 2) + pow(a.z, 2);
    
    if(na > nb){
        return *this;
    }
    return a;
}
#endif

#if Q2
Vector3 &Vector3::norMax(Vector3 &a){
    float na = pow(x, 2) + pow(y, 2) + pow(z, 2);
    float nb = pow(a.x, 2) + pow(a.y, 2) + pow(a.z, 2);
    
    if(na > nb){
        return *this;
    }
    return a;
}
#endif

#if Q3
Vector3 *Vector3::norMax(Vector3 *a){
    float na = pow(x, 2) + pow(y, 2) + pow(z, 2);
    float nb = pow(a->x, 2) + pow(a->y, 2) + pow(a->z, 2);
    
    if(na > nb){
        return this;
    }
    return a;
}
#endif

void printVec3(const Vector3 &a){
    std::cout << "(" << a.x << ", " << a.y << ", " << a.z << ")" << std::endl;
}

int main(){
    Vector3 a = Vector3(1, 2, 5);
    Vector3 b = Vector3(1, 2, 4);

    #if Q1
    printVec3(a.norMax(b)); //use const in printVec3
    #endif

    #if Q2
    printVec3(a.norMax(b));
    #endif

    #if Q3
    printVec3(*a.norMax(&b));
    #endif


    
    return 0;
}