package TP1;

import java.util.Scanner;

public class Ex04 {

    public static void main(String[] args){

        Scanner scanner = new Scanner(System.in);
        System.out.print("Donner un entier 0 <= N < 13 : ");
        //13! 6227020800 > (2 ^ 31 - 1)
        int N = scanner.nextInt();

        if(N >= 0 && N <= 12){
            System.out.println("méthode récursive  : " + recursiveFactorial(N));
            System.out.println("méthode itérative  : " + iterativeFactorial(N));
        }


    }

    private static int recursiveFactorial(int n){
        if(n <= 0) return 1;
        return n * recursiveFactorial(n - 1);
    }

    private static int iterativeFactorial(int n){
        int i = 1;

        while(n > 1){
            i = i * n;
            n--;
        }
        return i;
    }

}
