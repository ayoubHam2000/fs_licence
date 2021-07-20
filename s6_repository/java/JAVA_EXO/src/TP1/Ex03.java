package TP1;

import java.util.Scanner;

public class Ex03 {

    static public void main(String[] args){
        Scanner scanner = new Scanner(System.in);

        System.out.print("Donner un entier N : ");
        int N = scanner.nextInt();
        scanner.close();

        for(int i = 2; i <= N; i++)
            if(isPrime(i))
                System.out.println(i);
    }

    static private boolean isPrime(int nbr){
        if(nbr <= 1) return false;

        double sqrt = Math.sqrt(nbr);
        int i = 2;

        while(i <= sqrt){
            if(nbr % i == 0)
                return false;
            i++;
        }
        return true;
    }

}
