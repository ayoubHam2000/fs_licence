package TP1;

import java.util.Scanner;

public class Ex05 {


    public static void main(String[] args){
        Scanner scanner = new Scanner(System.in);

        System.out.print("Donner un entier N : ");
        int N = scanner.nextInt();
        scanner.close();

        for(int i = 1; i <= N; i++)
            if(isAmiable(N, i))
                System.out.println(i);

    }


    private static boolean isAmiable(int a, int b){
        return sommeDiviseurs(a) == sommeDiviseurs(b);
    }

    private static int sommeDiviseurs(int N){
        int sum = 1 + N;

        for(int i = 2; i < N; i++)
            if(N % i == 0)
                sum += i;
        return sum;
    }


}
