package TP1;

import java.util.HashMap;
import java.util.Scanner;

public class Ex06 {


    public static void main(String[] args){
        Scanner scanner = new Scanner(System.in);
        System.out.print("Donner un entier N : ");
        int N = scanner.nextInt();


        System.out.println("méthode récursive  f(" + N + ") = " + recursiveFibonacci(N));
        System.out.println("méthode itérative  f(" + N + ") = " + iterativeFibonacci(N));
    }


    private static int recursiveFibonacci(int n){
        if(n == 0 || n == 1) return 1;
        return recursiveFibonacci(n - 1) + recursiveFibonacci(n - 2);
    }

    private static int iterativeFibonacci(int n){
        int u1 = 1;
        int u2 = 1;
        int tm;

        while(n >= 2){
            tm = u1;
            u1 = u2;
            u2 = u2 + tm;
            n--;
        }
        return u2;
    }

    //region other
    //faster
    /*static HashMap<Integer, Integer> map = new HashMap<>();
    private static int recursiveFibonacci2(int n){
        if(n == 0 || n == 1) return 1;
        if(map.get(n) != null) return map.get(n);
        int i = recursiveFibonacci2(n - 1) + recursiveFibonacci2(n - 2);
        map.put(n, i);
        return i;
    }*/
    //endregion

}
