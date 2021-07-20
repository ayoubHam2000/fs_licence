package TP1;

import java.util.Scanner;

public class Ex08 {


    public static void main(String[] args){
        int u0;
        Scanner scanner = new Scanner(System.in);

        do{
            System.out.print("Donner u(0) > 0 : ");
            u0 = scanner.nextInt();
        }while (u0 <= 0);
        scanner.close();

        System.out.println("la plus petite valeur de n vérifiant u(n) = 1 est : n = " + find(u0));

    }

    private static int find(int u){
        int i = 0;
        while (u != 1){
            if(u % 2 == 0){
                u = u / 2;
            }else{
                u = 3 * u + 1;
            }
            i++;
        }
        return i;
    }


}
