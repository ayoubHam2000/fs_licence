#include <iostream>
#include "list.h"

List::List(int size){
    capacite = size;
    nbelement = 0;
    data = new T[size];
}

List::List(T* d, int size){
    capacite = size;
    nbelement = size;
    data = new T[size];

    for(int i = 0; i < size; i++)
        data[i] = d[i];
}

List::List(const List &a){
    delete []data;
    data = new T[a.capacite];
    capacite = a.capacite;
    nbelement = a.nbelement;

    for(int i = 0; i < nbelement; i++)
        data[i] = a.data[i];
}

List::~List(){
    delete[] data;
}

const List& List::operator=(const List &a){
    *this = a; //copy constructor;
    return *this;
}

T& List::operator[](int index){
    return data[index];
}

bool List::operator%(T a){
    for(int i = 0; i < nbelement; i++)
        if(data[i] == a)
            return true;
    return false;
}

void List::operator<<(T a){
    if(nbelement < capacite){
        data[nbelement] = a;
        nbelement++;
    }else{
        T* newD = new T[capacite + CAPACITE_PLUS];
        for(int i = 0; i < capacite; i++)
            newD[i] = data[i];
        newD[capacite] = a;
        delete[] data;
        data = newD;
        nbelement++;
    }
}

void operator>>(T& e, List &l){
    if(l.nbelement < l.capacite){
        for(int i = l.nbelement - 1; i >= 0; i--)
            l.data[i + 1] = l.data[i];
        l.data[0] = e; 
        l.nbelement++;
    }else{
        T* newD = new T[l.capacite + CAPACITE_PLUS];
        newD[0] = e;
        for(int i = 0; i < l.capacite; i++)
            newD[i + 1] = l.data[i];
        delete[] l.data;
        l.data = newD;
        l.nbelement++;
    }
}


void operator<<(T&e, List &l){
    e = l.data[0];
    l.nbelement--;
    for(int i = 0; i < l.nbelement; i++)
        l.data[i] = l.data[i + 1];
}

void List::operator>>(T &a){
    a = this->data[this->nbelement];
    nbelement--;
}

std::ostream &operator<<(std::ostream &stream, const List &l){
    for(int i = 0; i < l.nbelement; i++)
        stream << l.data[i] << ", ";
    return stream;
}


int main(){
    T e = 10.2;
    List l = List(10);


    l << e;
    std::cout << l << std::endl;

    return 0;
}


