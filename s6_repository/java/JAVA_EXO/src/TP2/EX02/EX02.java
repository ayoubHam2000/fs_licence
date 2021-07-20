package TP2.EX02;

public class EX02 {

    public static void main(String[] argv){
        //ex01 - ex04
        Complex z1 = new Complex(3, 10);
        Complex z2 = new Complex();
        Complex z3 = new Complex(z1);

        printComplex("z1", z1);
        printComplex("z2", z2);
        printComplex("z3", z3);

        //ex 5
        Complex z4 = new Complex(2, 9);
        printComplex("z4", z4);

        z1.add(z4);
        printComplex("z1 = z1 + z4", z1);

        z1.sub(z4);
        printComplex("z1 = z1 - z4", z1);

        z1.mul(z4);
        printComplex("z1 = z1 * z4", z1);

        z1.div(z4);
        printComplex("z1 = z1 / z4", z1);

        //ex 6
        System.out.println("06 ==============================");

        printComplex("z1", z1);
        printComplex("z4", z4);
        Complex z5 = Complex.add(z1, z4);
        printComplex("z5", z5);

        //ex 07
        System.out.println("07 ==============================");
        printComplex("z1", z1);
        System.out.println("|z1| = " + z1.module());
        System.out.println("arg(z1) = " + z1.arg() + " rad");

        //ex 08
        System.out.println("08 ==============================");
        printComplex("z1", z1);
        z1.mulScalar(5);
        printComplex("z1", z1);

        //09
        System.out.println("09 ==============================");
        printComplex("z1", z1);
        printComplex("conjugate(z1)", z1.conjugate());
        printComplex("inverse(z1)", z1.inverse());

        //10
        System.out.println("10 ==============================");
        printComplex("z1", z1);
        System.out.println("expo(z1) = " + z1.expo().getX() + " * e(" + z1.expo().getY() + " i)");

        //11
        System.out.println("11 ==============================");
        Complex z6 = new Complex(2, 2);
        Complex z7 = new Complex(2, 2);
        Complex z8 = new Complex(4, 3);

        printComplex("z6", z6);
        printComplex("z7", z7);
        printComplex("z8", z8);
        System.out.println("z6 == z7 => " + (z6.equals(z7)));
        System.out.println("z6 == z8 => " + (z6.equals(z8)));




    }

    public static void printComplex(String name, Complex z){
        System.out.println(name + " = " + z);
    }

}
