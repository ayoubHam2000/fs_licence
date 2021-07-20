#include <iostream>

class C{
    double re;
    double im;
public:
    C();
    C(double);
    C(double, double);
    C operator+ (C &);
    C operator- (C &);
    C operator* (C &);
    friend C operator*(double, C &);
    friend std::ostream& operator<<(std::ostream&, C&);
};

C::C(){
    re = 0;
    im = 0;
}

C::C(double x){
    re = x;
    im = x;
}

C::C(double x, double y){
    re = x;
    im = y;
}

C C::operator+(C &b){
    C res;

    res.re = re + b.re;
    res.im = im + b.im;
    return res;
}

C C::operator-(C &b){
    C res;

    res.re = re - b.re;
    res.im = im - b.im;
    return res;
}

C C::operator*(C &b){
    C res;

    res.re = re * b.re - im * b.im;
    res.im = re * b.im + im * b.re;
    return res;
}

C operator*(double h, C &b){
    C res;

    res.re = b.re * h;
    res.im = b.im * h;
    return res;
}

std::ostream &operator<<(std::ostream& stream, C &c){
    stream << c.re << " + (" << c.im << ")i";
    return stream; 
}

int main(){
    C z;
    C y = C(10);
    C c = C(10, 20);

    C res = z + y;
    std::cout << res << std::endl;

    res = c - y;
    std::cout << res << std::endl;

    res = z * y;
    std::cout << res << std::endl;

    res = 2 * c;
    std::cout << res << std::endl;

/*
    res = c * 2;
    std::cout << res << std::endl;
*/

    return 0;
}