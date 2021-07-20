package Exam2017.Ex02;

public class Main {

    public static void main(String args[]){
        A a = new A();
        B b = new B();

        System.out.println(a.x);
        System.out.println(b.getX());

        a = new B();

        System.out.println(a.x);
        System.out.println(b.getX());

        a.f();
        b.f();

        System.out.println(a.x);
        System.out.println(b.getX());


    }

}
