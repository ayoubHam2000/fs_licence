#ifndef list
#define lsit

#define CAPACITE_DEFAULT 5
#define CAPACITE_PLUS 2
typedef double T;
#include <iostream>

class List{
    T* data;
    int capacite;
    int nbelement;
public:

    List(int = CAPACITE_DEFAULT);
    List(T*, int);
    List(const List &);
    ~List();
    const List& operator=(const List &);
    T& operator[](int);
    bool operator%(T);
    void operator<<(T);
    void operator>>(T&);


    friend void operator<< (T &, List &);
    friend void operator>> (T &, List &);
    friend std::ostream &operator<<(std::ostream &, const List &);
    

};

#endif