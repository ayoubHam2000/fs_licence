package Exam2017Rat;

public class Ex03 implements I{

    int a = 0;
    //final int c;
    final int c = 0;

    public static void print(int b){
        //a = b;
        //can't add non static member to static method
        Ex03 test = new Ex03();
        //System.out.println("a = ", a);
        //can't retrieve value of a non static variable
        System.out.println(test);
    }


    //you should add the method m
    @Override
    public void m() {

    }
}

interface I{
    void m();
}
