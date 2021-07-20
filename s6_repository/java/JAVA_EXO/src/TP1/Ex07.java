package TP1;

import java.util.Scanner;

public class Ex07 {


    public static void main(String[] args){
        int a, b;
        Scanner scanner = new Scanner(System.in);

        do{
            System.out.print("Donner un entier strictement positive a : ");
            a = scanner.nextInt();
            System.out.print("Donner un entier strictement positive b : ");
            b = scanner.nextInt();
            if(a > 0 && b > 0){
                int r = multiplicationEgyptienne(a, b);
                System.out.println(a + " * " + b + " = " + r);
            }else{
                System.out.println("erreur : a <= 0 ou b <= 0");
            }
        }while (a <= 0 || b <= 0);
        scanner.close();
    }

    private static int multiplicationEgyptienne(int a, int b){
        if(b == 1)
            return a;
        if(b % 2 == 1)
            return a + multiplicationEgyptienne(a, b - 1);
        while(b % 2 == 0){
            a *= 2;
            b /= 2;
        }
        return multiplicationEgyptienne(a, b);
    }

}
