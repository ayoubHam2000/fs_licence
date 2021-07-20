//ayoub-ben
#include <iostream>

struct set_node{
    int data;
    set_node *next;
};

class set_int{
    set_node *head;
    int size;

public:
    set_int(){
        head = nullptr;
        size = 0;
    }

    ~set_int(){
        set_node *tmp;
        set_node *target;

        tmp = head;
        while(tmp != nullptr){
            target = tmp;
            tmp = tmp->next;
            delete target;
        }
    }

    void insert(int a){
        set_node *newNode;
        set_node *tmp;

        if(!appartient(a)){
            newNode = new set_node;
            newNode->next = nullptr;
            newNode->data = a;
            if(head == nullptr)
                head = newNode;
            else{
                tmp = head;
                while(tmp->next != nullptr){
                    tmp = tmp->next;
                }
                tmp->next = newNode;
            }
            size++;
        }
    }

    void print(){
        set_node *tmp;

        tmp = head;
        std::cout << "[";
        while(tmp->next != nullptr){
            std::cout << tmp->data << ", ";
            tmp = tmp->next;
        }
        std::cout << tmp->data << "]" << std::endl;
    }

    bool appartient(int info){
        set_node *tmp;

        tmp = head;
        while(tmp != nullptr){
            if(tmp->data == info)
                return true;
            tmp = tmp->next;
        }
        return false;
    }

    int cardinal() const{
        return size;
    }

};

int main(){
    set_int data = set_int();

    data.insert(1);
    data.insert(2);
    data.insert(3);
    data.insert(3);
    data.print();
    std::cout << data.cardinal() << std::endl;
    return 0;
}