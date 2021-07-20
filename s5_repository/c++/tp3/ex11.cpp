//ayoub-ben
#include <iostream>

class int2d{
    int nlig ; 
    int ncol ; 
    int **adv ; 

public :
    int2d(int , int); 
    ~int2d();
    int & operator () (int, int); 
};

int2d::int2d(int l, int c){
    nlig = l;
    ncol = c;
    adv = new int*[l];
    for(int i = 0; i < l; i++)
        adv[i] = new int[c];
}

int2d::~int2d(){
    for(int i = 0; i < nlig; i++){
        delete []adv[i];
    }
    delete[] adv;
}

int &int2d::operator()(int l, int c){
    return adv[l][c];
}

class int2db : public int2d{
    int l_min, l_max;
    int c_min, c_max;
public:
    int2db(int lmin, int lmax, int cmin, int cmax) : int2d(lmax - lmin + 1, cmax - cmin + 1){
        l_min = lmin;
        l_max = lmax;
        c_min = cmin;
        c_max = cmax;
    }

    int &operator() (const int l, const int c){
        return int2d::operator() (l - l_min, c - c_min);
    }

};

int main(){
    int2db a = int2db(0, 10, 0, 10);

    a(0, 0) = 10;
    std::cout << a(0, 0) << std::endl; 
    return 0;
}