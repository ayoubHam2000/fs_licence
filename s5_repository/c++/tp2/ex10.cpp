//ayoub-ben
#include <iostream>
#define FunFriend 1
#define FunMember !FunFriend

class vecteur3d{
    float x, y, z;

public :
    vecteur3d (float c1=0.0, float c2=0.0, float c3=0.0){
        x = c1 ; 
        y = c2 ; 
        z = c3 ;
    }

    #if FunMember

    bool operator==(vecteur3d b){
        if(x == b.x && y == b.y && z == b.z)
            return true;
        return false;
    }

    bool operator!=(vecteur3d b){
        return !(*this == b);
    }

    #endif

    #if FunFriend
    friend bool operator==(vecteur3d a, vecteur3d b);
    friend bool operator!=(vecteur3d a, vecteur3d b);
    #endif
};

#if FunFriend

bool operator==(vecteur3d a, vecteur3d b){
    if(a.x == b.x && a.y == b.y && a.z == b.z)
        return true;
    return false;
}

bool operator!=(vecteur3d a, vecteur3d b){
    return !(a == b);
}

#endif

int main(){
    vecteur3d a = {1, 2, 1};
    vecteur3d b = {1, 2, 1};

    if(a == b){
        std::cout << "a == b" << std::endl;
    }

    if(a != b){
        std::cout << "a != b" << std::endl;
    }

    return 0;
}