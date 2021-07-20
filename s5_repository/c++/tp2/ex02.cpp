#include <iostream>
#define Q1 0
#define Q2 0
#define Q3 1

class Vector3{
public:
    float x, y, z;
    Vector3(float i_x = 0.0, float i_y = 0.0, float i_z = 0.0){
        x = i_x;
        y = i_y;
        z = i_z;
    }

    #if Q1
    bool coincide(Vector3 a);
    #endif

    #if Q2
    bool coincide(Vector3 *a);
    #endif

    #if Q3
    bool coincide(Vector3 &a);
    #endif
};


#if Q1
bool Vector3::coincide(Vector3 a){
    if(a.x = x && a.y == y && a.z == z){
        return true;
    }
    return false;
}
#endif

#if Q2
bool Vector3::coincide(Vector3 *a){
    if(a->x = x && a->y == y && a->z == z){
        return true;
    }
    return false;
}
#endif

#if Q3
bool Vector3::coincide(Vector3 &a){
    if(a.x = x && a.y == y && a.z == z){
        return true;
    }
    return false;
}
#endif

int main(){
    Vector3 a = Vector3(1, 2, 3);
    Vector3 b = Vector3(1, 2, 3);

    #if Q1
    std::cout << "a et b => " << a.coincide(b) << std::endl;
    #endif

    #if Q2
    std::cout << "a et b => " << a.coincide(&b) << std::endl;
    #endif

    #if Q3
    std::cout << "a et b => " << a.coincide(b) << std::endl;
    #endif


    
    return 0;
}