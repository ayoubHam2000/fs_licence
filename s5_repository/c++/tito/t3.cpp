#include <iostream>

//ch5

int main(){

    //ch5
    //heritage, class name : public otherClass
    //public means you can access to all public function to the name class
    //you can redefine a class (page 12-13)

    //B() : A(0, 0) => init constrctor
    /*
    
    * En revanche, si la classe dérivée ne possède pas de
    constructeur, alors que la classe de base en comporte, le
    problème sera posé lors de la transmission des informations
    attendues par le constructeur de la classe de base.

    * La seule situation acceptable est celle où la classe de base
    dispose d'un constructeur sans arguments.
    

    * Pour que l'utilisateur d'une classe dérivée n'ait pas accès aux
    membres publics de sa classe de base, il suffit de remplacer le
    mot 'public' par 'private' dans sa déclaration.
    */


   /*
   ch6
   in case of class constructor when you use argument varibles with the same name of member varibles you can
   use || this->x = x;

   //override
   //virtual function 
   //virtual function should be public, prototype the same like base class
   //virtual function should'nt be static, friend,
   //il always defined in base class
   * Une classe peut avoir un destructeur virtuel, mais elle ne
    peut pas avoir de constructeur virtuel.
   
   //abstruct function (function vertiel pur) is a virtual function without implementation
   //=> virtual void fun() = 0;

   //abstruct class
   Une classe est considérée abstraite si elle contient au moins une
    fonction virtuelle pure (Abstraite).
   
    //Si on ne redénit pas la fonction virtuelle pure dans la
    classe dérivée, cette classe est considérée elle aussi abstraite.

    //the classes that are not abstruct are called  concrete class
    is a class that we can create an instance of, 
    using the new keyword. In other words, it's a full implementation of its blueprint.

   */

}