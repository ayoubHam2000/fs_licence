package TP1;

import java.util.Scanner;

public class Ex09 {

    public static void main(String[] args){
        Scanner scanner = new Scanner(System.in);
        System.out.print("Donner un réel x > 0  : ");
        double x = scanner.nextDouble();


        if(x > 0){
            System.out.println("méthode récursive  racine(" + x + ") = " + iterativeRacineRoot(x));
            System.out.println("méthode itérative  racine(" + x + ") = " + recursiveRacineRoot(x));
        }else{
            System.out.println("erreur : x <= 0");
        }
    }

    private static double iterativeRacineRoot(double x){
        double x1;
        double x2;

        x2 = x;
        do {
            x1 = x2;
            x2 = (x1 + x / x1) / 2;
        }while (Math.abs(x2 - x1) >= 1.0e-09);
        return x2;
    }

    //recursive
    private static double recursiveRacineRoot(double x1, double x){
        double x2 = (x1 + x / x1) / 2;
        if(Math.abs(x2 - x1) < 1.0e-09) return x2;
        return recursiveRacineRoot(x2, x);
    }

    private static double recursiveRacineRoot(double x){
        return recursiveRacineRoot(x, x);
    }

}
