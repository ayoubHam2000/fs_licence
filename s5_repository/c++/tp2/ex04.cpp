#include <iostream>

class Vector3{
public:
    float x, y, z;
    Vector3(float i_x = 0.0, float i_y = 0.0, float i_z = 0.0){
        x = i_x;
        y = i_y;
        z = i_z;
    }

    void display(){
         std::cout << "<" << x << ", " << y << ", " << z << ">" << std::endl;
    }

    Vector3 sum(Vector3 &b){
        Vector3 res;

        res.x = x + b.x;
        res.y = y + b.y;
        res.z = z + b.z;
        return res;
    }

    float vectProd(const Vector3 &b){
        return x * b.x + y * b.y + z * b.z;
    }

};

int main(){
    Vector3 vec1 = Vector3(1, 1, 1);
    Vector3 vec2 = Vector3(3, 1, 2);

    std::cout << "Vec1 = ";
    vec1.display();

    std::cout << "Vec2 = ";
    vec2.display();

    std::cout << "Vec1 + Vec2 = ";
    vec1.sum(vec2).display();

    std::cout << "Vec1 * Vec2 = " << vec1.vectProd(vec2) << std::endl;

    return 0;
}