## ch1
Un objet:est une entité autonome regroupant un état et les fonctions permettant de manipuler cet état.

Attribut:est une des variables de l’état d’un objet

Etat:valeurs des attributs (données) d’un objet

Comportement:opérations possibles sur un objet déclenchées par des stimulations externes(appels de méthodes ou messages envoyées par d’autres objets)

Identité:chaque objet à une existence propre Les objets sont différenciés par leurs noms.

Classe : Une classe est un modèle qui définit les attributs et les opérations d’un objetet qui est crée au moment du design.

objet : Un objetest une instance en cours d’exécution d’une classe qui utilise la mémoire et possède une durée de vie finie

Encapsulation : Un mécanisme consistant à rassembler les données et les méthodes au sein d'une même classe en cachant l'implémentation de l'objet

JAVA NE PERMET PAS L'HERITAGE MULTIPLE

Polymorphisme : Possibilité de définir plusieurs méthode savec le même nom.

Héritage:...

Polymorphisme:...
On distingue généralement trois types de polymorphisme:
overloading(surcharge)
template(généricité)
overriding(redefinition)

Abstraction:...

###############################################################

code source.java -> bytecode.class -> machinde virtuelle -> pateforme

Les commandes permettant la création, la compilation et l’exécution d’un programme Java
-javac: pourcompiler
-java: pour exécuter
-javadoc: pour générer une documentation
-jar: pour archiver

###############################################################
javac Myclass.java
javac -target 8 -version 8 Myclass.java
java myclass

depuis java 11
java myclass.java

## ch2
types simples (primitifs) int x;
types objects (référence) Point x;

primitifs : char, byte, short, int, long, float, double, boolean
cast => (type)expression
sur-casting implicite if type1 < type1 => type2 = type1 
sous-casting-casting explicite if type1 > type2

wrapper des types primitifs :
Boolean, Character, Byte, Short, Integer, Long, Float, Double, String, Data...

boxing/unboxing : you can implictly assign Integer to int and verse versa

String : length(), indexOf(x), contains(), charAt(i), substring(i, j), equals(str), replace(old, new)
Math : abs(x), pow(x, y), max(x, y), min, sqrt, double floor, double ceil +1, int round, random 0..1

Déclaration de méthode avec un nombre indéterminé de paramètres (varargs)
public staticint somme(int... tab)

###################################################

if (x instance of Livre)
next()
nextLine()
nextBoolean()
nextInt()
nextDouble()

hasNext()
hasNextLine()
hasNextBoolean()
hasNextInt()
hasNExtDouble()

scanner.next().charAt(0);

new switch java version >= 12
page 120 ch1
yield if you want switch to return a value using multilines code

args.length != 3
System.exit(0)

String a = ( x == 0) ? "True" : "False"

int[] tab = {10, 20};
for(int item : tab){

}


Lors des appels de méthode, les arguments sont toujours passés par valeur

int r = Arrays.binarySearch(tab, 10); //must be sorted, -1 if not exist
Arrays.sort(tab, 0, tab.length);
Arrays.fill(tab, 10);
boolean equal = Arrays.equals(tab, tab2);
Arrays.sort(tab, Collections.reverseOrder());
Arrays.parallelSort(tab); more than 8192 and cpu with more than core


## ch03

toString()
clone()
public boolean equals(Object obj) => ch02 +> p50
hashCode()

En Java, toute classe a un constructeur par défaut sans paramètres.
Par défaut, la visibilité des attributs, en Java, est package.
Donc,les attributs ne seront pas accessibles depuis la classe Main qui se situe dans un package différent

Il est interdit de surcharger une méthode en changeant le type de retour
Encapsulation -> p66

public class, and default class

La classe public est visible depuis n’importe quelle classe du projet.
La classe default est visible seulement par les classes de son package.

L’attribut default n’est accessible que depuis les classes faisant partie du même package.
L’attribut protected est accessible uniquement aux classes d’un même package et à ses classe filles(même si elles sont définies dans un package différents).

## ch04
agregation/composition(total) -> p23

p40

super.toString() + "Other Things" -> p43

Class getClass()
boolean equals(Object obj)
Object clone()
int hashCode()
String toString()

super(parametres du constructeur)
attention : cette instruction doit etre la premiere dans le constructeur d'une classe fille.

p55
Class A have int x;
Class B extends A have also int x;
Class C extemds B have also int x;

from C to C => x or this.x;
from C to B => super.x;
from C to A => ((A)this).x;
super.super.x not allowed.

p56 table

final => Methods => prevent override
final => class => prevent inherentance (la class String est final)

## ch05

Polymorphisme -> Ad-hoc -> Coercition  implicite
Polymorphisme -> Ad-hoc -> Surcharge overloading
Polymorphisme -> Universel -> Parametrique template
Polymorphisme -> universel -> Inclusion overriding

public class Exemple <T> {
    private T var;

    public T getVar(){
        return var;
    }

    public void setVar(T var){
        this.var = var;
    }
}

Upcasting
p17 -> On dit que a1 est une reference surclassee (elle est du type A et contient l'adresse d'une instance
d'une sous-classe de A).
Downcasting
A a= new B();
B b= (B) a;

A a = new A();
B b = (B)a; //error A cannot be cast to B

## ch06

public abstract class Forme{
    public abstract double f1();
    public abstract double f2();
}

*interface*
- Une interface peut être vue comme une classe 100% abstraite sans attributs et dont toutes les opérations sont abstraites.
- Possibilité de définir des attributs à condition qu’il s’agisse d’attributs de type primitif
- Ces attributs sont implicitement déclarés comme static final

