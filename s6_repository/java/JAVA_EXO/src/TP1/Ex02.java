package TP1;

import java.util.Scanner;

public class Ex02 {

    public static void main(String[] args){
        Scanner scanner = new Scanner(System.in);

        System.out.print("Entrez a (int) : ");
        int a = scanner.nextInt();

        System.out.print("Entrez b (int) : ");
        int b = scanner.nextInt();

        if(a == 0 || b == 0){
            System.out.println("Erreur : a et b doivent être différents de 0 ");
            System.exit(0);
        }

        System.out.print("Entrez c (int) : ");
        int c = scanner.nextInt();

        System.out.print("Entrez x (double) : ");
        double x = scanner.nextDouble();
        scanner.close();

        double result = ((a + b) / 2.0) * Math.pow(x, 3) + Math.pow(a + b, 2) * Math.pow(x, 2) + a + b + c;
        System.out.println("La valeur du polynôme est : " + result);


    }


}
