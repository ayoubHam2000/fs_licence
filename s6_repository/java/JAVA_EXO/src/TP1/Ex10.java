package TP1;

import java.util.ArrayList;
import java.util.LinkedList;

public class Ex10 {

    public static void main(String[] args){

        int a = 5;
        System.out.print(a + " = ");
        for(int item : ecimalBinaire(a)){
            System.out.print(item);
        }
        //out : 5 = 101
    }

    public static int minEnsemble(int a){
        if(a == 0) return 1;
        double res = Math.log(a) / Math.log(2) + 1;
        return (int)res;
    }

    public static int[] ecimalBinaire(int a){
        int size = minEnsemble(a);
        int[] tab = new int[size];
        int i = size - 1;
        do{
            tab[i] = a % 2;
            a /= 2 ;
            i--;
        }while (a != 0);
        return tab;
    }

}
